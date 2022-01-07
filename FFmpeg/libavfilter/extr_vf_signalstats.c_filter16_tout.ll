; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter16_tout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter16_tout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @filter16_tout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter16_tout(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %11, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %12, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %17, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %20, align 4
  br label %64

64:                                               ; preds = %149, %4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %152

68:                                               ; preds = %64
  %69 = load i32, i32* %20, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %14, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %68
  br label %149

78:                                               ; preds = %72
  %79 = load i32, i32* %20, align 4
  %80 = sub nsw i32 %79, 2
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %83, 2
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %82
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %117, %87
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %88
  %94 = call i32 @FILTER3(i32 2)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i32 @FILTER3(i32 1)
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ false, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32*, i32** %10, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %20, align 4
  %115 = call i32 @burn_frame16(i32* %111, %struct.TYPE_7__* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %107, %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %88

120:                                              ; preds = %88
  br label %148

121:                                              ; preds = %82, %78
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = call i32 @FILTER3(i32 1)
  store i32 %128, i32* %22, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %136 = icmp ne %struct.TYPE_7__* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @burn_frame16(i32* %138, %struct.TYPE_7__* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %134, %127
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %19, align 4
  br label %122

147:                                              ; preds = %122
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %148, %77
  %150 = load i32, i32* %20, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %20, align 4
  br label %64

152:                                              ; preds = %64
  %153 = load i32, i32* %21, align 4
  ret i32 %153
}

declare dso_local i32 @FILTER3(i32) #1

declare dso_local i32 @burn_frame16(i32*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
