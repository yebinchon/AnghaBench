; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_getlap.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_getlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@OV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, float**, i32)* @_ov_getlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ov_getlap(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, float** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store float** %3, float*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %80, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @vorbis_synthesis_pcmout(i32* %22, float*** %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %26
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load float**, float*** %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float*, float** %44, i64 %46
  %48 = load float*, float** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float**, float*** %13, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float*, float** %52, i64 %54
  %56 = load float*, float** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(float* %51, float* %56, i32 %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %37

65:                                               ; preds = %37
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @vorbis_synthesis_read(i32* %69, i32 %70)
  br label %80

72:                                               ; preds = %21
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = call i32 @_fetch_and_process_packet(%struct.TYPE_7__* %73, i32* null, i32 1, i32 0)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @OV_EOF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %81

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %65
  br label %17

81:                                               ; preds = %78, %17
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %164

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @vorbis_synthesis_lapout(i32* %87, float*** %13)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %115, %91
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %92
  %99 = load float**, float*** %9, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float*, float** %99, i64 %101
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 4, %108
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %109, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(float* %106, i32 0, i32 %113)
  br label %115

115:                                              ; preds = %98
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %92

118:                                              ; preds = %92
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %11, align 4
  br label %163

120:                                              ; preds = %85
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %126, %120
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %156, %130
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %131
  %138 = load float**, float*** %9, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float*, float** %138, i64 %140
  %142 = load float*, float** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float**, float*** %13, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float*, float** %146, i64 %148
  %150 = load float*, float** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memcpy(float* %145, float* %150, i32 %154)
  br label %156

156:                                              ; preds = %137
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %131

159:                                              ; preds = %131
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %159, %118
  br label %164

164:                                              ; preds = %163, %81
  ret void
}

declare dso_local i32 @vorbis_synthesis_pcmout(i32*, float***) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @vorbis_synthesis_read(i32*, i32) #1

declare dso_local i32 @_fetch_and_process_packet(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @vorbis_synthesis_lapout(i32*, float***) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
