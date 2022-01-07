; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldebug.c_findsetreg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldebug.c_findsetreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @findsetreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findsetreg(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %105, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %108

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @GET_OPCODE(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @GETARG_A(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %91 [
    i32 130, label %33
    i32 128, label %50
    i32 132, label %60
    i32 129, label %60
    i32 131, label %69
  ]

33:                                               ; preds = %20
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @GETARG_B(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @filterpc(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %39, %33
  br label %104

50:                                               ; preds = %20
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 2
  %54 = icmp sge i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @filterpc(i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %104

60:                                               ; preds = %20, %20
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @filterpc(i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %104

69:                                               ; preds = %20
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @GETARG_sBx(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %83
  br label %90

90:                                               ; preds = %89, %79, %69
  br label %104

91:                                               ; preds = %20
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @testAMode(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @filterpc(i32 %100, i32 %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %95, %91
  br label %104

104:                                              ; preds = %103, %90, %68, %59, %49
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %16

108:                                              ; preds = %16
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @filterpc(i32, i32) #1

declare dso_local i32 @GETARG_sBx(i32) #1

declare dso_local i32 @testAMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
