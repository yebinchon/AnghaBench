; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_cc_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_cc_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32*, i32)* @cc_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @cc_fill_buffer(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %58, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %58

27:                                               ; preds = %18
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 127
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %58

46:                                               ; preds = %36, %27
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %46, %45, %26
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 3
  store i32 %60, i32* %8, align 4
  br label %14

61:                                               ; preds = %14
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %143

65:                                               ; preds = %61
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = mul nsw i32 %67, 2
  %69 = call %struct.TYPE_4__* @hb_buffer_init(i32 %68)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %139, %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %142

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %139

83:                                               ; preds = %74
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 127
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 127
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %139

102:                                              ; preds = %92, %83
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 3
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %102
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %111, %102
  br label %139

139:                                              ; preds = %138, %101, %82
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 3
  store i32 %141, i32* %8, align 4
  br label %70

142:                                              ; preds = %70
  br label %143

143:                                              ; preds = %142, %61
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @hb_buffer_init(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
