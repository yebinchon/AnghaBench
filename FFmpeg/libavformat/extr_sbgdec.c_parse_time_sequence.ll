; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_time_sequence.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_time_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sbg_timestamp = type { i64, i64 }
%struct.sbg_fade = type { i32, i32, i32, i32 }
%struct.sbg_string = type { i64, i64 }
%struct.sbg_script_tseq = type { %struct.sbg_fade, i64, i64, %struct.sbg_timestamp }

@SBG_FADE_SAME = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"relative time without previous absolute time\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@SBG_FADE_ADAPT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, i32)* @parse_time_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_time_sequence(%struct.sbg_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbg_timestamp, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbg_fade, align 4
  %10 = alloca %struct.sbg_string, align 8
  %11 = alloca %struct.sbg_script_tseq*, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %9, i32 0, i32 0
  %13 = load i32, i32* @SBG_FADE_SAME, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %9, i32 0, i32 1
  %15 = load i32, i32* @SBG_FADE_SAME, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %9, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %9, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %19 = call i32 @parse_timestamp(%struct.sbg_parser* %18, %struct.sbg_timestamp* %6, i64* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %159

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %6, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %3, align 4
  br label %159

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %41 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %46 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %64

48:                                               ; preds = %28
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %53 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %59 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %3, align 4
  br label %159

63:                                               ; preds = %51, %48
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %66 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %6, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  %70 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %71 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %73, %74
  %76 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %6, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %78 = call i32 @parse_fade(%struct.sbg_parser* %77, %struct.sbg_fade* %9)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %159

83:                                               ; preds = %64
  %84 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %85 = call i32 @lex_space(%struct.sbg_parser* %84)
  %86 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %87 = call i32 @lex_name(%struct.sbg_parser* %86, %struct.sbg_string* %10)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %3, align 4
  br label %159

91:                                               ; preds = %83
  %92 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %93 = call i32 @lex_space(%struct.sbg_parser* %92)
  %94 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %95 = call i64 @lex_fixed(%struct.sbg_parser* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* @SBG_FADE_ADAPT, align 4
  %99 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %9, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %101 = call i32 @lex_space(%struct.sbg_parser* %100)
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %104 = call i32 @lex_line_end(%struct.sbg_parser* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %3, align 4
  br label %159

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %113 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = bitcast i32* %114 to i8**
  %116 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %117 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %116, i32 0, i32 3
  %118 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %119 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %118, i32 0, i32 2
  %120 = call %struct.sbg_script_tseq* @alloc_array_elem(i8** %115, i32 48, i32* %117, i32* %119)
  br label %132

121:                                              ; preds = %108
  %122 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %123 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = bitcast i32* %124 to i8**
  %126 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %127 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %130 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %129, i32 0, i32 0
  %131 = call %struct.sbg_script_tseq* @alloc_array_elem(i8** %125, i32 48, i32* %128, i32* %130)
  br label %132

132:                                              ; preds = %121, %111
  %133 = phi %struct.sbg_script_tseq* [ %120, %111 ], [ %131, %121 ]
  store %struct.sbg_script_tseq* %133, %struct.sbg_script_tseq** %11, align 8
  %134 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %135 = icmp ne %struct.sbg_script_tseq* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = call i32 @AVERROR(i32 %137)
  store i32 %138, i32* %3, align 4
  br label %159

139:                                              ; preds = %132
  %140 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %141 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %140, i32 0, i32 3
  %142 = bitcast %struct.sbg_timestamp* %141 to i8*
  %143 = bitcast %struct.sbg_timestamp* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 16, i1 false)
  %144 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %10, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %147 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %10, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.sbg_string, %struct.sbg_string* %10, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %149, %151
  %153 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %154 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.sbg_script_tseq*, %struct.sbg_script_tseq** %11, align 8
  %156 = getelementptr inbounds %struct.sbg_script_tseq, %struct.sbg_script_tseq* %155, i32 0, i32 0
  %157 = bitcast %struct.sbg_fade* %156 to i8*
  %158 = bitcast %struct.sbg_fade* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 4 %158, i64 16, i1 false)
  store i32 1, i32* %3, align 4
  br label %159

159:                                              ; preds = %139, %136, %106, %89, %81, %57, %35, %26, %22
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @parse_timestamp(%struct.sbg_parser*, %struct.sbg_timestamp*, i64*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @parse_fade(%struct.sbg_parser*, %struct.sbg_fade*) #1

declare dso_local i32 @lex_space(%struct.sbg_parser*) #1

declare dso_local i32 @lex_name(%struct.sbg_parser*, %struct.sbg_string*) #1

declare dso_local i64 @lex_fixed(%struct.sbg_parser*, i8*, i32) #1

declare dso_local i32 @lex_line_end(%struct.sbg_parser*) #1

declare dso_local %struct.sbg_script_tseq* @alloc_array_elem(i8**, i32, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
