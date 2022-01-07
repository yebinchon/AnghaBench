; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_send_header_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_send_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[RSound] Could not allocate memory.\00", align 1
@RSD_S16_BE = common dso_local global i32 0, align 4
@RSD_U16_LE = common dso_local global i32 0, align 4
@RSD_U16_BE = common dso_local global i32 0, align 4
@RSD_S32_LE = common dso_local global i32 0, align 4
@RSD_S32_BE = common dso_local global i32 0, align 4
@RSD_U32_LE = common dso_local global i32 0, align 4
@RSD_U32_BE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fmt \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@CHANNEL = common dso_local global i32 0, align 4
@FORMAT = common dso_local global i32 0, align 4
@FRAMESIZE = common dso_local global i32 0, align 4
@HEADER_SIZE = common dso_local global i64 0, align 8
@RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rsnd_send_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_send_header_info(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = call i8* @calloc(i32 1, i64 44)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @RSD_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %191

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rsnd_format_to_samplesize(i32 %25)
  %27 = mul nsw i32 8, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %63 [
    i32 132, label %32
    i32 130, label %39
    i32 131, label %47
    i32 129, label %55
  ]

32:                                               ; preds = %16
  %33 = call i32 (...) @rsnd_is_little_endian()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 133, i32* %10, align 4
  br label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @RSD_S16_BE, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %35
  br label %64

39:                                               ; preds = %16
  %40 = call i32 (...) @rsnd_is_little_endian()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @RSD_U16_LE, align 4
  store i32 %43, i32* %10, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @RSD_U16_BE, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %64

47:                                               ; preds = %16
  %48 = call i32 (...) @rsnd_is_little_endian()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @RSD_S32_LE, align 4
  store i32 %51, i32* %10, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @RSD_S32_BE, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %64

55:                                               ; preds = %16
  %56 = call i32 (...) @rsnd_is_little_endian()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @RSD_U32_LE, align 4
  store i32 %59, i32* %10, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @RSD_U32_BE, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %64

63:                                               ; preds = %16
  br label %64

64:                                               ; preds = %63, %62, %54, %46, %38
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlcpy(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  %69 = bitcast i8* %68 to i32*
  store i32 0, i32* %69, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  %72 = call i32 @strlcpy(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 12
  %75 = call i32 @strlcpy(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 8)
  store i32 16, i32* %6, align 4
  %76 = call i32 (...) @rsnd_is_little_endian()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %64
  %79 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_32 to i32 (i32*, ...)*)(i32* %6)
  br label %80

80:                                               ; preds = %78, %64
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 16
  %84 = bitcast i8* %83 to i32*
  store i32 %81, i32* %84, align 4
  store i32 0, i32* %5, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %91 [
    i32 133, label %88
    i32 128, label %88
    i32 135, label %89
    i32 134, label %90
  ]

88:                                               ; preds = %80, %80
  store i32 1, i32* %5, align 4
  br label %91

89:                                               ; preds = %80
  store i32 6, i32* %5, align 4
  br label %91

90:                                               ; preds = %80
  store i32 7, i32* %5, align 4
  br label %91

91:                                               ; preds = %80, %90, %89, %88
  %92 = call i32 (...) @rsnd_is_little_endian()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_16 to i32 (i32*, ...)*)(i32* %5)
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %5, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 20
  %100 = bitcast i8* %99 to i32*
  store i32 %97, i32* %100, align 4
  %101 = call i32 (...) @rsnd_is_little_endian()
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_16 to i32 (i32*, ...)*)(i32* %8)
  br label %105

105:                                              ; preds = %103, %96
  %106 = load i32, i32* %8, align 4
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 22
  %109 = bitcast i8* %108 to i32*
  store i32 %106, i32* %109, align 4
  %110 = call i32 (...) @rsnd_is_little_endian()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_32 to i32 (i32*, ...)*)(i32* %7)
  br label %114

114:                                              ; preds = %112, %105
  %115 = load i32, i32* %7, align 4
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 24
  %118 = bitcast i8* %117 to i32*
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @rsnd_format_to_samplesize(i32 %128)
  %130 = mul nsw i32 %125, %129
  store i32 %130, i32* %6, align 4
  %131 = call i32 (...) @rsnd_is_little_endian()
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %114
  %134 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_32 to i32 (i32*, ...)*)(i32* %6)
  br label %135

135:                                              ; preds = %133, %114
  %136 = load i32, i32* %6, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 28
  %139 = bitcast i8* %138 to i32*
  store i32 %136, i32* %139, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @rsnd_format_to_samplesize(i32 %145)
  %147 = mul nsw i32 %142, %146
  store i32 %147, i32* %5, align 4
  %148 = call i32 (...) @rsnd_is_little_endian()
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %135
  %151 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_16 to i32 (i32*, ...)*)(i32* %5)
  br label %152

152:                                              ; preds = %150, %135
  %153 = load i32, i32* %5, align 4
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 32
  %156 = bitcast i8* %155 to i32*
  store i32 %153, i32* %156, align 4
  %157 = call i32 (...) @rsnd_is_little_endian()
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %152
  %160 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_16 to i32 (i32*, ...)*)(i32* %9)
  br label %161

161:                                              ; preds = %159, %152
  %162 = load i32, i32* %9, align 4
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 34
  %165 = bitcast i8* %164 to i32*
  store i32 %162, i32* %165, align 4
  %166 = load i8*, i8** %4, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 36
  %168 = call i32 @strlcpy(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %169 = call i32 (...) @rsnd_is_little_endian()
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %161
  %172 = call i32 (i32*, ...) bitcast (i32 (...)* @rsnd_swap_endian_16 to i32 (i32*, ...)*)(i32* %10)
  br label %173

173:                                              ; preds = %171, %161
  %174 = load i32, i32* %10, align 4
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 42
  %177 = bitcast i8* %176 to i32*
  store i32 %174, i32* %177, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %4, align 8
  %183 = call i64 @rsnd_send_chunk(i32 %181, i8* %182, i64 44, i32 1)
  %184 = icmp ne i64 %183, 44
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load i8*, i8** %4, align 8
  %187 = call i32 @free(i8* %186)
  store i32 -1, i32* %2, align 4
  br label %191

188:                                              ; preds = %173
  %189 = load i8*, i8** %4, align 8
  %190 = call i32 @free(i8* %189)
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %188, %185, %14
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @RSD_ERR(i8*) #1

declare dso_local i32 @rsnd_format_to_samplesize(i32) #1

declare dso_local i32 @rsnd_is_little_endian(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @rsnd_swap_endian_32(...) #1

declare dso_local i32 @rsnd_swap_endian_16(...) #1

declare dso_local i64 @rsnd_send_chunk(i32, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
