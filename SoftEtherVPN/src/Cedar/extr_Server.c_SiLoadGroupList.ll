; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadGroupList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadGroupList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadGroupList(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %41

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_4__* @CfgEnumFolderToTokenList(i32* %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %35, %14
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @CfgGetFolder(i32* %31, i8* %32)
  %34 = call i32 @SiLoadGroupCfg(i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = call i32 @FreeToken(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %38, %13
  ret void
}

declare dso_local %struct.TYPE_4__* @CfgEnumFolderToTokenList(i32*) #1

declare dso_local i32 @SiLoadGroupCfg(i32*, i32) #1

declare dso_local i32 @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
