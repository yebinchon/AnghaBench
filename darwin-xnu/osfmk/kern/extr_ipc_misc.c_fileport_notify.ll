; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.fileglob = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid port passed to fileport_notify()\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Inactive port passed to fileport_notify()\0A\00", align 1
@IKOT_FILEPORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Port of type other than IKOT_FILEPORT passed to fileport_notify()\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"fileport without an assocated fileglob\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fileport_notify(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.fileglob*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  store %struct.fileglob* null, %struct.fileglob** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = call i32 @IP_VALID(%struct.TYPE_12__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = call i32 @ip_lock(%struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.fileglob*
  store %struct.fileglob* %24, %struct.fileglob** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i32 @ip_active(%struct.TYPE_12__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %18
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i64 @ip_kotype(%struct.TYPE_12__* %31)
  %33 = load i64, i64* @IKOT_FILEPORT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @panic(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  %39 = icmp eq %struct.fileglob* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @ip_unlock(%struct.TYPE_12__* %48)
  %50 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  %51 = call i32 @fileport_releasefg(%struct.fileglob* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_12__* %52)
  br label %57

54:                                               ; preds = %42
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = call i32 @ip_unlock(%struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %54, %47
  ret void
}

declare dso_local i32 @IP_VALID(%struct.TYPE_12__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_12__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_12__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @fileport_releasefg(%struct.fileglob*) #1

declare dso_local i32 @ipc_port_dealloc_kernel(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
