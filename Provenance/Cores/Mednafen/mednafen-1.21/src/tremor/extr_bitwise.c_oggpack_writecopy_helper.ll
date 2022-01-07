; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_bitwise.c_oggpack_writecopy_helper.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_bitwise.c_oggpack_writecopy_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64*, i64* }

@BUFFER_INCREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i64, void (%struct.TYPE_6__*, i64, i32)*, i32)* @oggpack_writecopy_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oggpack_writecopy_helper(%struct.TYPE_6__* %0, i8* %1, i64 %2, void (%struct.TYPE_6__*, i64, i32)* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (%struct.TYPE_6__*, i64, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store void (%struct.TYPE_6__*, i64, i32)* %3, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sdiv i64 %17, 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  %24 = sdiv i64 %23, 8
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = mul nsw i64 %25, 8
  %27 = load i64, i64* %8, align 8
  %28 = sub nsw i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %5
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %168

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* @BUFFER_INCREMENT, align 8
  %54 = add nsw i64 %52, %53
  %55 = icmp sgt i64 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %168

57:                                               ; preds = %44
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @BUFFER_INCREMENT, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @_ogg_realloc(i64* %69, i64 %72)
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %57
  br label %168

77:                                               ; preds = %57
  %78 = load i8*, i8** %14, align 8
  %79 = bitcast i8* %78 to i64*
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i64* %79, i64** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i64* %88, i64** %90, align 8
  br label %91

91:                                               ; preds = %77, %5
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %12, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load void (%struct.TYPE_6__*, i64, i32)*, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  call void %103(%struct.TYPE_6__* %104, i64 %110, i32 8)
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %97

114:                                              ; preds = %97
  br label %135

115:                                              ; preds = %91
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @memmove(i64* %118, i8* %119, i64 %120)
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 %122
  store i64* %126, i64** %124, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i64*, i64** %133, align 8
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %115, %114
  %136 = load i64, i64* %8, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load void (%struct.TYPE_6__*, i64, i32)*, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i64, i64* %8, align 8
  %150 = sub nsw i64 8, %149
  %151 = trunc i64 %150 to i32
  %152 = ashr i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %8, align 8
  %155 = trunc i64 %154 to i32
  call void %142(%struct.TYPE_6__* %143, i64 %153, i32 %155)
  br label %166

156:                                              ; preds = %138
  %157 = load void (%struct.TYPE_6__*, i64, i32)*, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i64
  %164 = load i64, i64* %8, align 8
  %165 = trunc i64 %164 to i32
  call void %157(%struct.TYPE_6__* %158, i64 %163, i32 %165)
  br label %166

166:                                              ; preds = %156, %141
  br label %167

167:                                              ; preds = %166, %135
  br label %171

168:                                              ; preds = %76, %56, %43
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %170 = call i32 @oggpack_writeclear(%struct.TYPE_6__* %169)
  br label %171

171:                                              ; preds = %168, %167
  ret void
}

declare dso_local i8* @_ogg_realloc(i64*, i64) #1

declare dso_local i32 @memmove(i64*, i8*, i64) #1

declare dso_local i32 @oggpack_writeclear(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
