; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_setstatusexasync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_setstatusexasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_direntry = type { i32*, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.card_dat = type { %struct.card_direntry* }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@CARD_FILENAMELEN = common dso_local global i64 0, align 8
@CARD_ERROR_EXIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.card_direntry*, i32)* @__card_setstatusexasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_setstatusexasync(i64 %0, i64 %1, %struct.card_direntry* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.card_direntry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.card_dat*, align 8
  %15 = alloca %struct.card_direntry*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.card_direntry* %2, %struct.card_direntry** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %13, align 8
  store %struct.card_dat* null, %struct.card_dat** %14, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @EXI_CHANNEL_0, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @EXI_CHANNEL_2, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %4
  %24 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %24, i64* %5, align 8
  br label %288

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @CARD_MAXFILES, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %25
  %33 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %33, i64* %5, align 8
  br label %288

34:                                               ; preds = %28
  %35 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %36 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %43 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %34
  %49 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %49, i64* %5, align 8
  br label %288

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @__card_getcntrlblock(i64 %51, i32** %13)
  store i64 %52, i64* %10, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %5, align 8
  br label %288

56:                                               ; preds = %50
  %57 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call %struct.card_dat* @__card_getdirblock(i32* %58)
  store %struct.card_dat* %59, %struct.card_dat** %14, align 8
  %60 = load %struct.card_dat*, %struct.card_dat** %14, align 8
  %61 = icmp ne %struct.card_dat* %60, null
  br i1 %61, label %62, label %284

62:                                               ; preds = %56
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %63 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %63, i64* %10, align 8
  %64 = load %struct.card_dat*, %struct.card_dat** %14, align 8
  %65 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %64, i32 0, i32 0
  %66 = load %struct.card_direntry*, %struct.card_direntry** %65, align 8
  store %struct.card_direntry* %66, %struct.card_direntry** %15, align 8
  br label %67

67:                                               ; preds = %88, %62
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @CARD_FILENAMELEN, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %76 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74, %71
  %83 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %84 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 0, i32* %87, align 4
  store i64 1, i64* %12, align 8
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %67

91:                                               ; preds = %67
  %92 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %92, i64 %93
  %95 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = bitcast i32* %96 to i64*
  %98 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %99 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i64*
  %102 = load i64, i64* @CARD_FILENAMELEN, align 8
  %103 = call i64 @memcmp(i64* %97, i64* %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %127, label %105

105:                                              ; preds = %91
  %106 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %106, i64 %107
  %109 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %112 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = call i64 @memcmp(i64* %110, i64* %113, i64 4)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %105
  %117 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %117, i64 %118
  %120 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %123 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = call i64 @memcmp(i64* %121, i64* %124, i64 2)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %220

127:                                              ; preds = %116, %105, %91
  store i64 0, i64* %11, align 8
  br label %128

128:                                              ; preds = %185, %127
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @CARD_MAXFILES, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %188

132:                                              ; preds = %128
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %7, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %185

136:                                              ; preds = %132
  %137 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %137, i64 %138
  %140 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 255
  br i1 %144, label %145, label %185

145:                                              ; preds = %136
  %146 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %147 = load i64, i64* %11, align 8
  %148 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %146, i64 %147
  %149 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %152 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = call i64 @memcmp(i64* %150, i64* %153, i64 4)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %145
  %157 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %158 = load i64, i64* %11, align 8
  %159 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %157, i64 %158
  %160 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %163 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = call i64 @memcmp(i64* %161, i64* %164, i64 2)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %156
  %168 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %168, i64 %169
  %171 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = bitcast i32* %172 to i64*
  %174 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %175 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = bitcast i32* %176 to i64*
  %178 = load i64, i64* @CARD_FILENAMELEN, align 8
  %179 = call i64 @memcmp(i64* %173, i64* %177, i64 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %167
  %182 = load i32*, i32** %13, align 8
  %183 = load i64, i64* @CARD_ERROR_EXIST, align 8
  %184 = call i64 @__card_putcntrlblock(i32* %182, i64 %183)
  store i64 %184, i64* %5, align 8
  br label %288

185:                                              ; preds = %167, %156, %145, %136, %132
  %186 = load i64, i64* %11, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %11, align 8
  br label %128

188:                                              ; preds = %128
  %189 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %190 = load i64, i64* %7, align 8
  %191 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %189, i64 %190
  %192 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = bitcast i32* %193 to i64*
  %195 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %196 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = bitcast i32* %197 to i64*
  %199 = load i64, i64* @CARD_FILENAMELEN, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @memcpy(i64* %194, i64* %198, i32 %200)
  %202 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %203 = load i64, i64* %7, align 8
  %204 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %202, i64 %203
  %205 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %204, i32 0, i32 1
  %206 = load i64*, i64** %205, align 8
  %207 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %208 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %207, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = call i32 @memcpy(i64* %206, i64* %209, i32 4)
  %211 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %211, i64 %212
  %214 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %213, i32 0, i32 2
  %215 = load i64*, i64** %214, align 8
  %216 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %217 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = call i32 @memcpy(i64* %215, i64* %218, i32 2)
  br label %220

220:                                              ; preds = %188, %116
  %221 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %222 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %225 = load i64, i64* %7, align 8
  %226 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %224, i64 %225
  %227 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %226, i32 0, i32 10
  store i32 %223, i32* %227, align 4
  %228 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %229 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %232 = load i64, i64* %7, align 8
  %233 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %231, i64 %232
  %234 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %233, i32 0, i32 9
  store i32 %230, i32* %234, align 8
  %235 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %236 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %239 = load i64, i64* %7, align 8
  %240 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %238, i64 %239
  %241 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %240, i32 0, i32 8
  store i32 %237, i32* %241, align 4
  %242 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %243 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %246 = load i64, i64* %7, align 8
  %247 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %245, i64 %246
  %248 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %247, i32 0, i32 7
  store i32 %244, i32* %248, align 8
  %249 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %250 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %252, i64 %253
  %255 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %254, i32 0, i32 6
  store i32 %251, i32* %255, align 4
  %256 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %257 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %260 = load i64, i64* %7, align 8
  %261 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %259, i64 %260
  %262 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %261, i32 0, i32 5
  store i32 %258, i32* %262, align 8
  %263 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %264 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %267 = load i64, i64* %7, align 8
  %268 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %266, i64 %267
  %269 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %268, i32 0, i32 4
  store i32 %265, i32* %269, align 4
  %270 = load %struct.card_direntry*, %struct.card_direntry** %8, align 8
  %271 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.card_direntry*, %struct.card_direntry** %15, align 8
  %274 = load i64, i64* %7, align 8
  %275 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %273, i64 %274
  %276 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %275, i32 0, i32 3
  store i32 %272, i32* %276, align 8
  %277 = load i64, i64* %6, align 8
  %278 = load i32, i32* %9, align 4
  %279 = call i64 @__card_updatedir(i64 %277, i32 %278)
  store i64 %279, i64* %10, align 8
  %280 = icmp sge i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %220
  %282 = load i64, i64* %10, align 8
  store i64 %282, i64* %5, align 8
  br label %288

283:                                              ; preds = %220
  br label %284

284:                                              ; preds = %283, %56
  %285 = load i32*, i32** %13, align 8
  %286 = load i64, i64* %10, align 8
  %287 = call i64 @__card_putcntrlblock(i32* %285, i64 %286)
  store i64 %287, i64* %5, align 8
  br label %288

288:                                              ; preds = %284, %281, %181, %54, %48, %32, %23
  %289 = load i64, i64* %5, align 8
  ret i64 %289
}

declare dso_local i64 @__card_getcntrlblock(i64, i32**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(i32*) #1

declare dso_local i64 @memcmp(i64*, i64*, i64) #1

declare dso_local i64 @__card_putcntrlblock(i32*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @__card_updatedir(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
