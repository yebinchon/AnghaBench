; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_FormatPolicyValue.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_FormatPolicyValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [3 x i32] [i32 78, i32 111, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 89, i32 101, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CMD_NO_SETTINGS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FormatPolicyValue(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %55

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_3__* @GetPolicyItem(i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @UniStrCpy(i32* %24, i32 %25, i8* bitcast ([3 x i32]* @.str to i8*))
  br label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @UniStrCpy(i32* %28, i32 %29, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  br label %31

31:                                               ; preds = %27, %23
  br label %55

32:                                               ; preds = %13
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @UniStrCpy(i32* %41, i32 %42, i8* %43)
  br label %54

45:                                               ; preds = %35, %32
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @_UU(i8* %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @UniFormat(i32* %46, i32 %47, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  br label %55

55:                                               ; preds = %12, %54, %31
  ret void
}

declare dso_local %struct.TYPE_3__* @GetPolicyItem(i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i8*) #1

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
