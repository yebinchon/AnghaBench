; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_expand_tseq.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_expand_tseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { i32, i32, i32, %struct.sbg_script_tseq*, %struct.sbg_script_definition* }
%struct.sbg_script_definition = type { i8, i32, i32, i32, i32 }
%struct.sbg_script_tseq = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sbg_script_event = type { i32, i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Recursion loop on \22%.*s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Tone-set \22%.*s\22 not defined\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbg_script*, i32*, i32, %struct.sbg_script_tseq*)* @expand_tseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_tseq(i8* %0, %struct.sbg_script* %1, i32* %2, i32 %3, %struct.sbg_script_tseq* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sbg_script*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sbg_script_tseq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sbg_script_definition*, align 8
  %15 = alloca %struct.sbg_script_tseq*, align 8
  %16 = alloca %struct.sbg_script_event*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sbg_script_tseq* %4, %struct.sbg_script_tseq** %11, align 8
  %17 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %18 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %26 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %29 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @av_log(i8* %23, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %188

34:                                               ; preds = %5
  %35 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %36 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %81, %34
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %46 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %43
  %50 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %51 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %50, i32 0, i32 4
  %52 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %52, i64 %54
  %56 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %59 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %49
  %63 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %64 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %63, i32 0, i32 4
  %65 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %65, i64 %67
  %69 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %72 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %75 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memcmp(i32 %70, i32 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  br label %84

80:                                               ; preds = %62, %49
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %43

84:                                               ; preds = %79, %43
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %87 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %94 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %97 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @av_log(i8* %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %6, align 4
  br label %188

102:                                              ; preds = %84
  %103 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %104 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %103, i32 0, i32 4
  %105 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %105, i64 %107
  store %struct.sbg_script_definition* %108, %struct.sbg_script_definition** %14, align 8
  %109 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %14, align 8
  %110 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 4
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 66
  br i1 %113, label %114, label %148

114:                                              ; preds = %102
  %115 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %116 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %115, i32 0, i32 3
  %117 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %116, align 8
  %118 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %14, align 8
  %119 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %117, i64 %121
  store %struct.sbg_script_tseq* %122, %struct.sbg_script_tseq** %15, align 8
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %144, %114
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %14, align 8
  %126 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %134, i64 %136
  %138 = call i32 @expand_tseq(i8* %130, %struct.sbg_script* %131, i32* %132, i32 %133, %struct.sbg_script_tseq* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %6, align 4
  br label %188

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %123

147:                                              ; preds = %123
  br label %183

148:                                              ; preds = %102
  %149 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %150 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %149, i32 0, i32 2
  %151 = bitcast i32* %150 to i8**
  %152 = load %struct.sbg_script*, %struct.sbg_script** %8, align 8
  %153 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %152, i32 0, i32 1
  %154 = load i32*, i32** %9, align 8
  %155 = call %struct.sbg_script_event* @alloc_array_elem(i8** %151, i32 24, i32* %153, i32* %154)
  store %struct.sbg_script_event* %155, %struct.sbg_script_event** %16, align 8
  %156 = load %struct.sbg_script_event*, %struct.sbg_script_event** %16, align 8
  %157 = icmp ne %struct.sbg_script_event* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = call i32 @AVERROR(i32 %159)
  store i32 %160, i32* %6, align 4
  br label %188

161:                                              ; preds = %148
  %162 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %163 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.sbg_script_event*, %struct.sbg_script_event** %16, align 8
  %167 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %14, align 8
  %169 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.sbg_script_event*, %struct.sbg_script_event** %16, align 8
  %172 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %14, align 8
  %174 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.sbg_script_event*, %struct.sbg_script_event** %16, align 8
  %177 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %179 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sbg_script_event*, %struct.sbg_script_event** %16, align 8
  %182 = getelementptr inbounds %struct.sbg_script_event, %struct.sbg_script_event* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %161, %147
  %184 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %185 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %185, align 8
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %183, %158, %141, %90, %22
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local %struct.sbg_script_event* @alloc_array_elem(i8**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
