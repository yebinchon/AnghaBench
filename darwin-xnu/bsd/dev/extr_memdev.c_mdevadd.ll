; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_memdev.c_mdevadd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_memdev.c_mdevadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@NB_MAX_MDEVICES = common dso_local global i32 0, align 4
@mdev = common dso_local global %struct.TYPE_2__* null, align 8
@mdInited = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"mdevadd: attempt to add overlapping memory device at %016llX-%016llX\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"mdevadd: attempt to add more than %d memory devices\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"mdevadd: attempt to explicitly add a bogus memory device: %08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"mdevadd: attempt to explicitly add a previously defined memory device: %08X\0A\00", align 1
@mdevBMajor = common dso_local global i64 0, align 8
@mdevbdevsw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"mdevadd: error - bdevsw_add() returned %d\0A\00", align 1
@mdevCMajor = common dso_local global i64 0, align 8
@mdevcdevsw = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"ramdevice_init: error - cdevsw_add() returned %d\0A\00", align 1
@DEVFS_BLOCK = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"md%d\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"mdevadd: devfs_make_node for block failed!\0A\00", align 1
@DEVFS_CHAR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"rmd%d\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"mdevadd: devfs_make_node for character failed!\0A\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@mdPhys = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [67 x i8] c"Added memory device md%x/rmd%x (%08X/%08X) at %016llX for %016llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdevadd(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %96

13:                                               ; preds = %4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %86, %13
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @NB_MAX_MDEVICES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @mdInited, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %28
  br label %86

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %35, %36
  %38 = sub i32 %37, 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %38, %44
  br i1 %45, label %85, label %46

46:                                               ; preds = %34
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %52, %58
  %60 = sub i32 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %85, label %63

63:                                               ; preds = %46
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add i32 %75, %81
  %83 = sub i32 %82, 1
  %84 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %83)
  br label %85

85:                                               ; preds = %63, %46, %34
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %14

89:                                               ; preds = %14
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @NB_MAX_MDEVICES, align 4
  %94 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %117

96:                                               ; preds = %4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @NB_MAX_MDEVICES, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @mdInited, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %103
  br label %117

117:                                              ; preds = %116, %95
  %118 = load i64, i64* @mdevBMajor, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = call i64 @bdevsw_add(i32 -1, i32* @mdevbdevsw)
  store i64 %121, i64* @mdevBMajor, align 8
  %122 = load i64, i64* @mdevBMajor, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i64, i64* @mdevBMajor, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %125)
  store i32 -1, i32* %5, align 4
  br label %276

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %117
  %129 = load i64, i64* @mdevCMajor, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i64, i64* @mdevBMajor, align 8
  %133 = call i64 @cdevsw_add_with_bdev(i32 -1, i32* @mdevcdevsw, i64 %132)
  store i64 %133, i64* @mdevCMajor, align 8
  %134 = load i64, i64* @mdevCMajor, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i64, i64* @mdevCMajor, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %137)
  store i32 -1, i32* %5, align 4
  br label %276

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i64, i64* @mdevBMajor, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i8* @makedev(i64 %141, i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  store i32 %144, i32* %149, align 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @DEVFS_BLOCK, align 4
  %157 = load i32, i32* @UID_ROOT, align 4
  %158 = load i32, i32* @GID_OPERATOR, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i8* @devfs_make_node(i32 %155, i32 %156, i32 %157, i32 %158, i32 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 7
  store i32* %161, i32** %166, align 8
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %140
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %276

176:                                              ; preds = %140
  %177 = load i64, i64* @mdevCMajor, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i8* @makedev(i64 %177, i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 4
  store i32 %180, i32* %185, align 8
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @DEVFS_CHAR, align 4
  %193 = load i32, i32* @UID_ROOT, align 4
  %194 = load i32, i32* @GID_OPERATOR, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i8* @devfs_make_node(i32 %191, i32 %192, i32 %193, i32 %194, i32 384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  %197 = bitcast i8* %196 to i32*
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 6
  store i32* %197, i32** %202, align 8
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %176
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %276

212:                                              ; preds = %176
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  store i32 %219, i32* %224, align 8
  %225 = load i32, i32* @DEV_BSIZE, align 4
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 5
  store i32 %225, i32* %230, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %212
  %234 = load i32, i32* @mdPhys, align 4
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %234
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %233, %212
  %243 = load i32, i32* @mdInited, align 4
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %243
  store i32 %250, i32* %248, align 8
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = shl i32 %265, 12
  %267 = load i32, i32* %8, align 4
  %268 = shl i32 %267, 12
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %251, i32 %252, i32 %258, i32 %264, i32 %266, i32 %268)
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %242, %210, %174, %136, %124
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i64 @bdevsw_add(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @cdevsw_add_with_bdev(i32, i32*, i64) #1

declare dso_local i8* @makedev(i64, i32) #1

declare dso_local i8* @devfs_make_node(i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
