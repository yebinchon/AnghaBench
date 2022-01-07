; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps_fixed_tablegen.h_make_filters_from_proto.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps_fixed_tablegen.h_make_filters_from_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sintbl_4 = common dso_local global i32* null, align 8
@costbl_4 = common dso_local global i32* null, align 8
@sintbl_8 = common dso_local global i32* null, align 8
@costbl_8 = common dso_local global i32* null, align 8
@sintbl_12 = common dso_local global i32* null, align 8
@costbl_12 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([8 x [2 x i32]]*, i32*, i32)* @make_filters_from_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_filters_from_proto([8 x [2 x i32]]* %0, i32* %1, i32 %2) #0 {
  %4 = alloca [8 x [2 x i32]]*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store [8 x [2 x i32]]* %0, [8 x [2 x i32]]** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32*, i32** @sintbl_4, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** @costbl_4, align 8
  store i32* %20, i32** %8, align 8
  store i32 759250125, i32* %11, align 4
  store i32 759250125, i32* %12, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** @sintbl_8, align 8
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** @costbl_8, align 8
  store i32* %26, i32** %8, align 8
  store i32 410903207, i32* %11, align 4
  store i32 992008094, i32* %12, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** @sintbl_12, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** @costbl_12, align 8
  store i32* %29, i32** %8, align 8
  store i32 277904834, i32* %11, align 4
  store i32 1037154959, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %18
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %131, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %134

36:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %127, %36
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 7
  br i1 %39, label %40, label %130

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 6
  %44 = mul nsw i32 %41, %43
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 1
  %47 = add nsw i32 %44, %46
  %48 = sub nsw i32 %47, 3
  %49 = load i32, i32* %6, align 4
  %50 = srem i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %57
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sub nsw i32 %74, %77
  %79 = add nsw i32 %78, 536870912
  %80 = ashr i32 %79, 30
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = add nsw i32 %87, 536870912
  %89 = ashr i32 %88, 30
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %71, %57
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %98, 536870912
  %100 = ashr i32 %99, 30
  %101 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %4, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %101, i64 %103
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %104, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  store i32 %100, i32* %108, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %115, 536870912
  %117 = ashr i32 %116, 30
  %118 = sub nsw i32 0, %117
  %119 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %4, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %119, i64 %121
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %122, i64 0, i64 %124
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 0, i64 1
  store i32 %118, i32* %126, align 4
  br label %127

127:                                              ; preds = %91
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %37

130:                                              ; preds = %37
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %32

134:                                              ; preds = %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
