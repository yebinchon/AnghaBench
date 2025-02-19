; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubDb.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadHubDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"GroupList\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UserList\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CertList\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CrlList\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"IPAccessControlList\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadHubDb(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %49

11:                                               ; preds = %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @CfgGetFolder(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SiLoadGroupList(%struct.TYPE_7__* %12, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @CfgGetFolder(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @SiLoadUserList(%struct.TYPE_7__* %16, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %11
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @CfgGetFolder(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @SiLoadCertList(i32 %29, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @CfgGetFolder(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @SiLoadCrlList(i32 %37, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @CfgGetFolder(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @SiLoadAcList(i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %10, %24, %11
  ret void
}

declare dso_local i32 @SiLoadGroupList(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @SiLoadUserList(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SiLoadCertList(i32, i32) #1

declare dso_local i32 @SiLoadCrlList(i32, i32) #1

declare dso_local i32 @SiLoadAcList(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
