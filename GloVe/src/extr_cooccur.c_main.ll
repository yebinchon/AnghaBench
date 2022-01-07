; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_main.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@vocab_file = common dso_local global i32 0, align 4
@file_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Tool to calculate word-word cooccurrence statistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Author: Jeffrey Pennington (jpennin@stanford.edu)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Usage options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09-verbose <int>\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\09\09Set verbosity: 0, 1, 2 (default), or 3\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09-symmetric <int>\0A\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"\09\09If <int> = 0, only use left context; if <int> = 1 (default), use left and right\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09-window-size <int>\0A\00", align 1
@.str.8 = private unnamed_addr constant [88 x i8] c"\09\09Number of context words to the left (and to the right, if symmetric = 1); default 15\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"\09-vocab-file <file>\0A\00", align 1
@.str.10 = private unnamed_addr constant [103 x i8] c"\09\09File containing vocabulary (truncated unigram counts, produced by 'vocab_count'); default vocab.txt\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\09-memory <float>\0A\00", align 1
@.str.12 = private unnamed_addr constant [113 x i8] c"\09\09Soft limit for memory consumption, in GB -- based on simple heuristic, so not extremely accurate; default 4.0\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\09-max-product <int>\0A\00", align 1
@.str.14 = private unnamed_addr constant [275 x i8] c"\09\09Limit the size of dense cooccurrence array by specifying the max product <int> of the frequency counts of the two cooccurring words.\0A\09\09This value overrides that which is automatically produced by '-memory'. Typically only needs adjustment for use with very large corpora.\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\09-overflow-length <int>\0A\00", align 1
@.str.16 = private unnamed_addr constant [286 x i8] c"\09\09Limit to length <int> the sparse overflow array, which buffers cooccurrence data that does not fit in the dense array, before writing to disk. \0A\09\09This value overrides that which is automatically produced by '-memory'. Typically only needs adjustment for use with very large corpora.\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\09-overflow-file <file>\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"\09\09Filename, excluding extension, for temporary files; default overflow\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"\09-distance-weighting <int>\0A\00", align 1
@.str.20 = private unnamed_addr constant [168 x i8] c"\09\09If <int> = 0, do not weight cooccurrence count by distance between words; if <int> = 1 (default), weight the cooccurrence count by inverse of distance between words\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0AExample usage:\0A\00", align 1
@.str.22 = private unnamed_addr constant [147 x i8] c"./cooccur -verbose 2 -symmetric 0 -window-size 10 -vocab-file vocab.txt -memory 8.0 -overflow-file tempoverflow < corpus.txt > cooccurrences.bin\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@verbose = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c"-symmetric\00", align 1
@symmetric = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [13 x i8] c"-window-size\00", align 1
@window_size = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"-vocab-file\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"vocab.txt\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"-overflow-file\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"-memory\00", align 1
@memory_limit = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [20 x i8] c"-distance-weighting\00", align 1
@distance_weighting = common dso_local global i8* null, align 8
@max_product = common dso_local global i64 0, align 8
@overflow_length = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [13 x i8] c"-max-product\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"-overflow-length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 1.000000e+05, double* %8, align 8
  %9 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 1, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32 @malloc(i32 %12)
  store i32 %13, i32* @vocab_file, align 4
  %14 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 1, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @malloc(i32 %17)
  store i32 %18, i32* @file_head, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %30 = call i32 @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.8, i64 0, i64 0))
  %31 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %32 = call i32 @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.10, i64 0, i64 0))
  %33 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %34 = call i32 @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.12, i64 0, i64 0))
  %35 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %36 = call i32 @printf(i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.14, i64 0, i64 0))
  %37 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %38 = call i32 @printf(i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.16, i64 0, i64 0))
  %39 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %40 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0))
  %41 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %42 = call i32 @printf(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.20, i64 0, i64 0))
  %43 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %44 = call i32 @printf(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %202

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = call i32 @find_arg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %46, i8** %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @atoi(i8* %56)
  store i8* %57, i8** @verbose, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %59, i8** %60)
  store i32 %61, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @atoi(i8* %69)
  store i8* %70, i8** @symmetric, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = call i32 @find_arg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 %72, i8** %73)
  store i32 %74, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @atoi(i8* %82)
  store i8* %83, i8** @window_size, align 8
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = call i32 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %85, i8** %86)
  store i32 %87, i32* %6, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i32, i32* @vocab_file, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcpy(i32 %90, i8* %96)
  br label %101

98:                                               ; preds = %84
  %99 = load i32, i32* @vocab_file, align 4
  %100 = call i32 @strcpy(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %89
  %102 = load i32, i32* %4, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = call i32 @find_arg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 %102, i8** %103)
  store i32 %104, i32* %6, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* @file_head, align 4
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcpy(i32 %107, i8* %113)
  br label %118

115:                                              ; preds = %101
  %116 = load i32, i32* @file_head, align 4
  %117 = call i32 @strcpy(i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32, i32* %4, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = call i32 @find_arg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 %119, i8** %120)
  store i32 %121, i32* %6, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %124, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @atof(i8* %129)
  store i64 %130, i64* @memory_limit, align 8
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i32, i32* %4, align 4
  %133 = load i8**, i8*** %5, align 8
  %134 = call i32 @find_arg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 %132, i8** %133)
  store i32 %134, i32* %6, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load i8**, i8*** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %137, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @atoi(i8* %142)
  store i8* %143, i8** @distance_weighting, align 8
  br label %144

144:                                              ; preds = %136, %131
  %145 = load i64, i64* @memory_limit, align 8
  %146 = sitofp i64 %145 to double
  %147 = fmul double 8.500000e-01, %146
  %148 = fmul double %147, 0x41D0000000000000
  %149 = fdiv double %148, 4.000000e+00
  store double %149, double* %7, align 8
  br label %150

150:                                              ; preds = %161, %144
  %151 = load double, double* %7, align 8
  %152 = load double, double* %8, align 8
  %153 = load double, double* %8, align 8
  %154 = call double @log(double %153) #3
  %155 = fadd double %154, 0x3FC3C467E37C0151
  %156 = fmul double %152, %155
  %157 = fsub double %151, %156
  %158 = call i32 @fabs(double %157)
  %159 = sitofp i32 %158 to double
  %160 = fcmp ogt double %159, 1.000000e-03
  br i1 %160, label %161, label %167

161:                                              ; preds = %150
  %162 = load double, double* %7, align 8
  %163 = load double, double* %8, align 8
  %164 = call double @log(double %163) #3
  %165 = fadd double %164, 0x3FC3C467E37C0151
  %166 = fdiv double %162, %165
  store double %166, double* %8, align 8
  br label %150

167:                                              ; preds = %150
  %168 = load double, double* %8, align 8
  %169 = fptosi double %168 to i64
  store i64 %169, i64* @max_product, align 8
  %170 = load double, double* %7, align 8
  %171 = fptosi double %170 to i64
  %172 = sdiv i64 %171, 6
  store i64 %172, i64* @overflow_length, align 8
  %173 = load i32, i32* %4, align 4
  %174 = load i8**, i8*** %5, align 8
  %175 = call i32 @find_arg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i32 %173, i8** %174)
  store i32 %175, i32* %6, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %178, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @atoll(i8* %183)
  %185 = ptrtoint i8* %184 to i64
  store i64 %185, i64* @max_product, align 8
  br label %186

186:                                              ; preds = %177, %167
  %187 = load i32, i32* %4, align 4
  %188 = load i8**, i8*** %5, align 8
  %189 = call i32 @find_arg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 %187, i8** %188)
  store i32 %189, i32* %6, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %192, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @atoll(i8* %197)
  %199 = ptrtoint i8* %198 to i64
  store i64 %199, i64* @overflow_length, align 8
  br label %200

200:                                              ; preds = %191, %186
  %201 = call i32 (...) @get_cooccurrence()
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %200, %21
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @find_arg(i8*, i32, i8**) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @atof(i8*) #1

declare dso_local i32 @fabs(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i8* @atoll(i8*) #1

declare dso_local i32 @get_cooccurrence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
