; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_genClientPeerID.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_genClientPeerID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }

@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s:0\00", align 1
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@C_OK = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genClientPeerID(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @NET_IP_STR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %27 = call i32 @snprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @C_OK, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %47

29:                                               ; preds = %3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = trunc i64 %14 to i32
  %34 = call i32 @anetPeerToString(i32 %32, i8* %16, i32 %33, i32* %10)
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @formatPeerID(i8* %35, i64 %36, i8* %16, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @C_ERR, align 4
  br label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @C_OK, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #2

declare dso_local i32 @anetPeerToString(i32, i8*, i32, i32*) #2

declare dso_local i32 @formatPeerID(i8*, i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
