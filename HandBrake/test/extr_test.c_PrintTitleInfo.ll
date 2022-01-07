; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_PrintTitleInfo.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_PrintTitleInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i8*, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { float, i64 }
%struct.TYPE_16__ = type { float, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"+ title %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  + Main Feature\0A\00", align 1
@HB_STREAM_TYPE = common dso_local global i64 0, align 8
@HB_FF_STREAM_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"  + stream: %s\0A\00", align 1
@HB_DVD_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"  + index %d\0A\00", align 1
@HB_BD_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"  + playlist: %05d.MPLS\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  + angle(s) %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"  + duration: %02d:%02d:%02d\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"  + size: %dx%d, pixel aspect: %d/%d, display aspect: %.2f, %.3f fps\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"  + autocrop: %d/%d/%d/%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"  + chapters:\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"    + %d: duration %02d:%02d:%02d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"  + audio tracks:\0A\00", align 1
@HB_ACODEC_AC3 = common dso_local global i64 0, align 8
@HB_ACODEC_DCA = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"    + %d, %s (iso639-2: %s), %dHz, %dbps\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"    + %d, %s (iso639-2: %s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  + subtitle tracks:\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"    + %d, %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"  + combing detected, may be interlaced or telecined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @PrintTitleInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintTitleInfo(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HB_STREAM_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HB_FF_STREAM_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %66

40:                                               ; preds = %28
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HB_DVD_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %65

52:                                               ; preds = %40
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HB_BD_TYPE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* @stderr, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32 %84, i32 %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 15
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 14
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to float
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 14
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load float, float* %115, align 8
  %117 = fdiv float %112, %116
  %118 = fpext float %117 to double
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 13
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sitofp i64 %122 to float
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 13
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load float, float* %126, align 8
  %128 = fdiv float %123, %127
  %129 = fpext float %128 to double
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i32 %93, i32 %97, i32 %102, i32 %107, double %118, double %129)
  %131 = load i32, i32* @stderr, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 8
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 8
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %136, i32 %141, i32 %146, i32 %151)
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %183, %77
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 12
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @hb_list_count(i32 %159)
  %161 = icmp slt i32 %156, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %155
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 12
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i8* @hb_list_item(i32 %165, i32 %166)
  %168 = bitcast i8* %167 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %168, %struct.TYPE_22__** %6, align 8
  %169 = load i32, i32* @stderr, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %172, i32 %175, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %162
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %155

186:                                              ; preds = %155
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %250, %186
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 11
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @hb_list_count(i32 %193)
  %195 = icmp slt i32 %190, %194
  br i1 %195, label %196, label %253

196:                                              ; preds = %189
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call %struct.TYPE_13__* @hb_list_audio_config_item(i32 %199, i32 %200)
  store %struct.TYPE_13__* %201, %struct.TYPE_13__** %7, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @HB_ACODEC_AC3, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %215, label %208

208:                                              ; preds = %196
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @HB_ACODEC_DCA, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %236

215:                                              ; preds = %208, %196
  %216 = load i32, i32* @stderr, align 4
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %217, 1
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %218, i8* %222, i8* %226, i32 %230, i32 %234)
  br label %249

236:                                              ; preds = %208
  %237 = load i32, i32* @stderr, align 4
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %239, i8* %243, i8* %247)
  br label %249

249:                                              ; preds = %236, %215
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %189

253:                                              ; preds = %189
  %254 = load i32, i32* @stderr, align 4
  %255 = call i32 (i32, i8*, ...) @fprintf(i32 %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %277, %253
  %257 = load i32, i32* %5, align 4
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 10
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @hb_list_count(i32 %260)
  %262 = icmp slt i32 %257, %261
  br i1 %262, label %263, label %280

263:                                              ; preds = %256
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = call i8* @hb_list_item(i32 %266, i32 %267)
  %269 = bitcast i8* %268 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %269, %struct.TYPE_21__** %8, align 8
  %270 = load i32, i32* @stderr, align 4
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 (i32, i8*, ...) @fprintf(i32 %270, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %272, i8* %275)
  br label %277

277:                                              ; preds = %263
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %5, align 4
  br label %256

280:                                              ; preds = %256
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 9
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32, i32* @stderr, align 4
  %287 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %280
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i8* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_13__* @hb_list_audio_config_item(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
