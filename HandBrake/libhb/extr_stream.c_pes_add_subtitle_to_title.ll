; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_pes_add_subtitle_to_title.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_pes_add_subtitle_to_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i64, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_20__, i8*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i8* }

@PGSSUB = common dso_local global i64 0, align 8
@PICTURESUB = common dso_local global i8* null, align 8
@RENDERSUB = common dso_local global i8* null, align 8
@VOBSUB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unrecognized subtitle!\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"stream id 0x%x (type 0x%x substream 0x%x) subtitle 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32, %struct.TYPE_22__*, i32)* @pes_add_subtitle_to_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pes_add_subtitle_to_title(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_22__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i64 %23
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %9, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %26 = call i32 @get_id(%struct.TYPE_25__* %25)
  store i32 %26, i32* %10, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hb_list_count(i32 %29)
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %48, %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.TYPE_23__* @hb_list_item(i32 %38, i32 %39)
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %301

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %31

51:                                               ; preds = %31
  %52 = call %struct.TYPE_23__* @calloc(i32 72, i32 1)
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %14, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 12
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 12
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  store i32 90000, i32* %64, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %90 [
    i32 129, label %68
    i32 128, label %79
  ]

68:                                               ; preds = %51
  %69 = load i64, i64* @PGSSUB, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i8*, i8** @PICTURESUB, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 11
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @RENDERSUB, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %94

79:                                               ; preds = %51
  %80 = load i64, i64* @VOBSUB, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i8*, i8** @PICTURESUB, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @RENDERSUB, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  br label %94

90:                                               ; preds = %51
  %91 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %93 = call i32 @free(%struct.TYPE_23__* %92)
  br label %301

94:                                               ; preds = %79, %68
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_21__* @lang_for_code(i32 %97)
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %15, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strlen(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  br label %115

111:                                              ; preds = %94
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i8* [ %110, %107 ], [ %114, %111 ]
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @hb_subsource_name(i64 %119)
  %121 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %101, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %116, i8* %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %124, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @VOBSUB, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %219

154:                                              ; preds = %115
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 1081472, i32* %158, align 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 1081472, i32* %162, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32 1081472, i32* %166, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  store i32 12578816, i32* %170, align 4
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  store i32 12578816, i32* %174, align 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  store i32 1081472, i32* %178, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 6
  store i32 1081472, i32* %182, align 4
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 7
  store i32 1081472, i32* %186, align 4
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 8
  store i32 12578816, i32* %190, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 9
  store i32 1081472, i32* %194, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 10
  store i32 1081472, i32* %198, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 11
  store i32 1081472, i32* %202, align 4
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 12
  store i32 1081472, i32* %206, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 13
  store i32 12578816, i32* %210, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 14
  store i32 1081472, i32* %214, align 4
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 15
  store i32 1081472, i32* %218, align 4
  br label %219

219:                                              ; preds = %154, %115
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %222, i32 %225, i32 %228, i32 %231)
  %233 = load i32, i32* %8, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %295

235:                                              ; preds = %219
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* %8, align 4
  br label %243

241:                                              ; preds = %235
  %242 = load i32, i32* %13, align 4
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %285, %243
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %288

250:                                              ; preds = %246
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call %struct.TYPE_23__* @hb_list_item(i32 %253, i32 %254)
  store %struct.TYPE_23__* %255, %struct.TYPE_23__** %12, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 65535
  store i32 %259, i32* %16, align 4
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = ashr i32 %262, 16
  store i32 %263, i32* %17, align 4
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %16, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %250
  br label %288

270:                                              ; preds = %250
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %16, align 4
  %275 = icmp sle i32 %273, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %270
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  br label %288

283:                                              ; preds = %276, %270
  br label %284

284:                                              ; preds = %283
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %246

288:                                              ; preds = %282, %269, %246
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %294 = call i32 @hb_list_insert(i32 %291, i32 %292, %struct.TYPE_23__* %293)
  br label %301

295:                                              ; preds = %219
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %300 = call i32 @hb_list_add(i32 %298, %struct.TYPE_23__* %299)
  br label %301

301:                                              ; preds = %46, %90, %295, %288
  ret void
}

declare dso_local i32 @get_id(%struct.TYPE_25__*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_23__* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_23__* @calloc(i32, i32) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @lang_for_code(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @hb_subsource_name(i64) #1

declare dso_local i32 @hb_list_insert(i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
