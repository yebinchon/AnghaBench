; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvd.c_hb_dvdread_read.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvd.c_hb_dvdread_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32 }

@HB_DVD_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"dvd: vobu read error blk %d - skipping to next blk incr %d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"dvd: vobu read error blk %d - skipping to cell %d\00", align 1
@HB_ERROR_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"dvd: Lost sync, searching for NAV pack at blk %d\00", align 1
@DSI_START_BYTE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"dvd: left cell %d (%u,%u) for (%u,%u) at block %u\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"dvd: couldn't find a VOBU after 1024 blocks\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"dvd: In sync with DVD at block %d\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"dvd: null prev_vobu in cell %d at block %d\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"dvd: beginning of cell %d at block %d\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"dvd: assuming missed end of cell %d at block %d\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"dvd: end of cell %d at block %d\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"dvd: DVDReadBlocks failed (%d), skipping to vobu %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_23__*)* @hb_dvdread_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @hb_dvdread_read(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %4, align 8
  %15 = load i32, i32* @HB_DVD_READ_BUFFER_SIZE, align 4
  %16 = call %struct.TYPE_24__* @hb_buffer_init(i32 %15)
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %5, align 8
  br label %17

17:                                               ; preds = %622, %413, %1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %609, label %22

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 @hb_buffer_close(%struct.TYPE_24__** %5)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %652

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %338, %224, %155, %113, %32
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %79, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 1024
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @DVDReadBlocks(i32 %40, i64 %43, i32 1, i32* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @is_nav_pack(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %79

63:                                               ; preds = %52, %49
  br label %82

64:                                               ; preds = %37
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %68, 10
  %70 = call i32 (i8*, i64, ...) @hb_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 10
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %58
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %34

82:                                               ; preds = %63, %34
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 1024
  br i1 %84, label %85, label %133

85:                                               ; preds = %82
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, i64, ...) @hb_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %88, i32 %91)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ugt i64 %101, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %85
  %107 = call i32 @hb_buffer_close(%struct.TYPE_24__** %5)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 16
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @HB_ERROR_READ, align 4
  %112 = call i32 @hb_set_work_error(i32 %110, i32 %111)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %652

113:                                              ; preds = %85
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 5
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 15
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %130 = call i32 @FindNextCell(%struct.TYPE_22__* %129)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 6
  store i32 1, i32* %132, align 8
  br label %33

133:                                              ; preds = %82
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @is_nav_pack(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %155

148:                                              ; preds = %139
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i8*, i64, ...) @hb_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %151)
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 7
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %148, %139
  br label %33

156:                                              ; preds = %133
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @DSI_START_BYTE, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = call i32 @navRead_DSI(%struct.TYPE_25__* %6, i32* %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %242

167:                                              ; preds = %156
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %242

172:                                              ; preds = %167
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %175, %178
  br i1 %179, label %188, label %180

180:                                              ; preds = %172
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 8
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  br i1 %187, label %188, label %242

188:                                              ; preds = %180, %172
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 8
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i8*, i64, ...) @hb_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %191, i64 %194, i64 %197, i64 %200, i64 %203, i64 %206)
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 15
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %214, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %210, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %188
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 15
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 8
  store i64 0, i64* %240, align 8
  br label %33

241:                                              ; preds = %188
  br label %242

242:                                              ; preds = %241, %180, %167, %156
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %8, align 4
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %9, align 4
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = and i32 %252, -2147483648
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %242
  %256 = load i32, i32* %12, align 4
  %257 = and i32 %256, 1073741824
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %12, align 4
  %261 = and i32 %260, 1073741823
  %262 = icmp eq i32 %261, 1073741823
  br i1 %262, label %263, label %282

263:                                              ; preds = %259, %255, %242
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %12, align 4
  %267 = load i32, i32* %12, align 4
  %268 = and i32 %267, -2147483648
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %263
  %271 = load i32, i32* %12, align 4
  %272 = and i32 %271, 1073741823
  %273 = icmp eq i32 %272, 1073741823
  br i1 %273, label %274, label %281

274:                                              ; preds = %270, %263
  %275 = load i32, i32* %8, align 4
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 10
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  br label %343

281:                                              ; preds = %270
  br label %282

282:                                              ; preds = %281, %259
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %12, align 4
  %285 = and i32 %284, 1073741823
  %286 = add nsw i32 %283, %285
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %326

289:                                              ; preds = %282
  %290 = load i32, i32* %9, align 4
  %291 = icmp slt i32 %290, 1024
  br i1 %291, label %292, label %326

292:                                              ; preds = %289
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp sge i64 %294, %297
  br i1 %298, label %299, label %326

299:                                              ; preds = %292
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %303, %306
  %308 = icmp sle i32 %300, %307
  br i1 %308, label %315, label %309

309:                                              ; preds = %299
  %310 = load i32, i32* %8, align 4
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 13
  %313 = load i32, i32* %312, align 4
  %314 = icmp sle i32 %310, %313
  br i1 %314, label %315, label %326

315:                                              ; preds = %309, %299
  %316 = load i32, i32* %8, align 4
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 10
  store i32 %316, i32* %318, align 8
  %319 = load i32, i32* %9, align 4
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 3
  store i64 %323, i64* %325, align 8
  br label %343

326:                                              ; preds = %309, %292, %289, %282
  %327 = load i32, i32* %7, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %7, align 4
  %329 = icmp sgt i32 %328, 1024
  br i1 %329, label %330, label %338

330:                                              ; preds = %326
  %331 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %332 = call i32 @hb_buffer_close(%struct.TYPE_24__** %5)
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 16
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @HB_ERROR_READ, align 4
  %337 = call i32 @hb_set_work_error(i32 %335, i32 %336)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %652

338:                                              ; preds = %326
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 3
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %341, 1
  store i64 %342, i64* %340, align 8
  br label %33

343:                                              ; preds = %315, %274
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 7
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 2
  br i1 %352, label %353, label %367

353:                                              ; preds = %348, %343
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 10
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = call i32 (i8*, i64, ...) @hb_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %362)
  br label %364

364:                                              ; preds = %358, %353
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 7
  store i32 1, i32* %366, align 4
  br label %367

367:                                              ; preds = %364, %348
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, -2147483648
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %379, label %373

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, 1073741823
  %378 = icmp eq i32 %377, 1073741823
  br i1 %378, label %379, label %527

379:                                              ; preds = %373, %367
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 15
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %383, align 8
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = icmp ult i64 %390, %394
  br i1 %395, label %396, label %446

396:                                              ; preds = %379
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 15
  %399 = load %struct.TYPE_20__*, %struct.TYPE_20__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %400, align 8
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = icmp sge i64 %407, %411
  br i1 %412, label %413, label %446

413:                                              ; preds = %396
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 10
  %419 = load i32, i32* %418, align 8
  %420 = call i32 (i8*, i64, ...) @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %416, i32 %419)
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %425, i32 0, i32 1
  store i64 %424, i64* %426, align 8
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 5
  store i32 0, i32* %428, align 4
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 15
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %432, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 3
  store i64 %439, i64* %441, align 8
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %443 = call i32 @FindNextCell(%struct.TYPE_22__* %442)
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 6
  store i32 1, i32* %445, align 8
  br label %17

446:                                              ; preds = %396, %379
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 10
  %449 = load i32, i32* %448, align 8
  %450 = sext i32 %449 to i64
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 15
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** %454, align 8
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %450, %461
  br i1 %462, label %463, label %472

463:                                              ; preds = %446
  %464 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %467, i32 0, i32 10
  %469 = load i32, i32* %468, align 8
  %470 = sext i32 %469 to i64
  %471 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %466, i64 %470)
  br label %472

472:                                              ; preds = %463, %446
  %473 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %510

477:                                              ; preds = %472
  %478 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 10
  %483 = load i32, i32* %482, align 8
  %484 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %480, i32 %483)
  %485 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %485, i32 0, i32 4
  %487 = load i32, i32* %486, align 8
  %488 = sext i32 %487 to i64
  %489 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %489, i32 0, i32 1
  store i64 %488, i64* %490, align 8
  %491 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %491, i32 0, i32 15
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 0
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** %494, align 8
  %496 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %502, i32 0, i32 3
  store i64 %501, i64* %503, align 8
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %505 = call i32 @FindNextCell(%struct.TYPE_22__* %504)
  %506 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %506, i32 0, i32 6
  store i32 1, i32* %507, align 8
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 5
  store i32 0, i32* %509, align 4
  br label %513

510:                                              ; preds = %472
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %511, i32 0, i32 5
  store i32 1, i32* %512, align 4
  br label %513

513:                                              ; preds = %510, %477
  %514 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %517, i32 0, i32 9
  store i64 %516, i64* %518, align 8
  %519 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %519, i32 0, i32 1
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 8
  store i64 %521, i64* %523, align 8
  %524 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %524, i32 0, i32 6
  store i32 0, i32* %525, align 8
  br label %526

526:                                              ; preds = %513
  br label %527

527:                                              ; preds = %526, %373
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = and i32 %530, -2147483648
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %539, label %533

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = and i32 %536, 1073741823
  %538 = icmp eq i32 %537, 1073741823
  br i1 %538, label %539, label %608

539:                                              ; preds = %533, %527
  %540 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %540, i32 0, i32 10
  %542 = load i32, i32* %541, align 8
  %543 = sext i32 %542 to i64
  %544 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %544, i32 0, i32 15
  %546 = load %struct.TYPE_20__*, %struct.TYPE_20__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %546, i32 0, i32 0
  %548 = load %struct.TYPE_19__*, %struct.TYPE_19__** %547, align 8
  %549 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %550 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %548, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = icmp ule i64 %543, %554
  br i1 %555, label %573, label %556

556:                                              ; preds = %539
  %557 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %557, i32 0, i32 10
  %559 = load i32, i32* %558, align 8
  %560 = sext i32 %559 to i64
  %561 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %561, i32 0, i32 15
  %563 = load %struct.TYPE_20__*, %struct.TYPE_20__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %563, i32 0, i32 0
  %565 = load %struct.TYPE_19__*, %struct.TYPE_19__** %564, align 8
  %566 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 1
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %565, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %569, i32 0, i32 1
  %571 = load i64, i64* %570, align 8
  %572 = icmp sgt i64 %560, %571
  br i1 %572, label %573, label %582

573:                                              ; preds = %556, %539
  %574 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %575 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %574, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 10
  %579 = load i32, i32* %578, align 8
  %580 = sext i32 %579 to i64
  %581 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %576, i64 %580)
  br label %582

582:                                              ; preds = %573, %556
  %583 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 4
  %585 = load i32, i32* %584, align 8
  %586 = sext i32 %585 to i64
  %587 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %587, i32 0, i32 1
  store i64 %586, i64* %588, align 8
  %589 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %589, i32 0, i32 5
  store i32 0, i32* %590, align 4
  %591 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %592 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %591, i32 0, i32 15
  %593 = load %struct.TYPE_20__*, %struct.TYPE_20__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %593, i32 0, i32 0
  %595 = load %struct.TYPE_19__*, %struct.TYPE_19__** %594, align 8
  %596 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %597 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %596, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %595, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %603 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %602, i32 0, i32 3
  store i64 %601, i64* %603, align 8
  %604 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %605 = call i32 @FindNextCell(%struct.TYPE_22__* %604)
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 6
  store i32 1, i32* %607, align 8
  br label %608

608:                                              ; preds = %582, %533
  br label %637

609:                                              ; preds = %17
  %610 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %611 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %610, i32 0, i32 14
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %614 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %613, i32 0, i32 10
  %615 = load i32, i32* %614, align 8
  %616 = sext i32 %615 to i64
  %617 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %618 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %617, i32 0, i32 1
  %619 = load i32*, i32** %618, align 8
  %620 = call i32 @DVDReadBlocks(i32 %612, i64 %616, i32 1, i32* %619)
  %621 = icmp ne i32 %620, 1
  br i1 %621, label %622, label %632

622:                                              ; preds = %609
  %623 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %624 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %623, i32 0, i32 10
  %625 = load i32, i32* %624, align 8
  %626 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %627 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %626, i32 0, i32 3
  %628 = load i64, i64* %627, align 8
  %629 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %625, i64 %628)
  %630 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %631 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %630, i32 0, i32 0
  store i32 0, i32* %631, align 8
  br label %17

632:                                              ; preds = %609
  %633 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = add nsw i32 %635, -1
  store i32 %636, i32* %634, align 8
  br label %637

637:                                              ; preds = %632, %608
  %638 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %639 = icmp ne %struct.TYPE_24__* %638, null
  br i1 %639, label %640, label %646

640:                                              ; preds = %637
  %641 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %642 = call i32 @hb_dvdread_is_break(%struct.TYPE_22__* %641)
  %643 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %644 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %644, i32 0, i32 0
  store i32 %642, i32* %645, align 8
  br label %646

646:                                              ; preds = %640, %637
  %647 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %648 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %647, i32 0, i32 10
  %649 = load i32, i32* %648, align 8
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %648, align 8
  %651 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %651, %struct.TYPE_24__** %2, align 8
  br label %652

652:                                              ; preds = %646, %330, %106, %30
  %653 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  ret %struct.TYPE_24__* %653
}

declare dso_local %struct.TYPE_24__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_24__**) #1

declare dso_local i32 @DVDReadBlocks(i32, i64, i32, i32*) #1

declare dso_local i32 @is_nav_pack(i32*) #1

declare dso_local i32 @hb_log(i8*, i64, ...) #1

declare dso_local i32 @hb_set_work_error(i32, i32) #1

declare dso_local i32 @FindNextCell(%struct.TYPE_22__*) #1

declare dso_local i32 @navRead_DSI(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @hb_deep_log(i32, i8*, i64, i64) #1

declare dso_local i32 @hb_dvdread_is_break(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
