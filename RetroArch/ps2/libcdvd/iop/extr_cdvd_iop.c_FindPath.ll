; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_FindPath.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_FindPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32, i64, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dirTocEntry = type { i32, i32 }
%struct.TocEntry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CachedDirInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_DIR_CACHE_SECTORS = common dso_local global i8* null, align 8
@cdReadMode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CDVolDesc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindPath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirTocEntry*, align 8
  %9 = alloca %struct.TocEntry, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @strtok(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %4, align 8
  %12 = call i32 (...) @isValidDisc()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %230

16:                                               ; preds = %1
  %17 = call i32 @sceCdDiskReady(i32 0)
  br label %18

18:                                               ; preds = %226, %16
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %227

21:                                               ; preds = %18
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %24 = bitcast i8* %23 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %24, %struct.dirTocEntry** %8, align 8
  %25 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %26 = bitcast %struct.dirTocEntry* %25 to i32*
  %27 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %28 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = bitcast i32* %31 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %32, %struct.dirTocEntry** %8, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %175, %21
  %34 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %37 = mul nsw i32 %36, 2048
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = bitcast i8* %39 to %struct.dirTocEntry*
  %41 = icmp ult %struct.dirTocEntry* %34, %40
  br i1 %41, label %42, label %184

42:                                               ; preds = %33
  %43 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %44 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %49 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %50 = bitcast %struct.dirTocEntry* %49 to i8*
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv i64 %54, 2048
  %56 = add nsw i64 %55, 1
  %57 = mul nsw i64 %56, 2048
  %58 = getelementptr inbounds i8, i8* %48, i64 %57
  %59 = bitcast i8* %58 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %59, %struct.dirTocEntry** %8, align 8
  br label %60

60:                                               ; preds = %47, %42
  %61 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %64 = mul nsw i32 %63, 2048
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = bitcast i8* %66 to %struct.dirTocEntry*
  %68 = icmp uge %struct.dirTocEntry* %61, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %60
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %69
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %86 = icmp ugt i8* %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  br label %90

90:                                               ; preds = %87, %75
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %98 = call i32 @ReadSect(i32 %93, i8* %96, i8* %97, i32* @cdReadMode)
  %99 = load i32, i32* @TRUE, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %2, align 4
  br label %230

104:                                              ; preds = %90
  %105 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %106 = bitcast i8* %105 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %106, %struct.dirTocEntry** %8, align 8
  br label %110

107:                                              ; preds = %69
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %2, align 4
  br label %230

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %60
  %112 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %113 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %172

117:                                              ; preds = %111
  %118 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %119 = call i32 @TocEntryCopy(%struct.TocEntry* %9, %struct.dirTocEntry* %118)
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %9, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcpy(i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %122
  br label %130

130:                                              ; preds = %129, %117
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %9, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @strcasecmp(i8* %131, i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %130
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %136
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %145 = add nsw i64 %144, -1
  store i64 %145, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 7), align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  store i64 0, i64* %151, align 8
  br label %160

152:                                              ; preds = %146
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 7), align 8
  %154 = call i8* @strrchr(i64* %153, i8 signext 47)
  store i8* %154, i8** %5, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i8*, i8** %5, align 8
  store i8 0, i8* %158, align 1
  br label %159

159:                                              ; preds = %157, %152
  br label %160

160:                                              ; preds = %159, %149
  br label %169

161:                                              ; preds = %136
  %162 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 7), align 8
  %163 = call i32 @strcat(i64* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 7), align 8
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @strcat(i64* %164, i8* %165)
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  br label %169

169:                                              ; preds = %161, %160
  br label %184

170:                                              ; preds = %130
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %111
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %172
  %176 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %177 = bitcast %struct.dirTocEntry* %176 to i32*
  %178 = load %struct.dirTocEntry*, %struct.dirTocEntry** %8, align 8
  %179 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = bitcast i32* %182 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %183, %struct.dirTocEntry** %8, align 8
  br label %33

184:                                              ; preds = %169, %33
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @TRUE, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %2, align 4
  br label %230

191:                                              ; preds = %184
  %192 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %192, i8** %4, align 8
  %193 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %9, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 4
  %195 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %9, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 11
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CDVolDesc, i32 0, i32 0, i32 0), align 4
  %199 = and i32 %198, 2047
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = add nsw i32 %197, %201
  store i32 %202, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  store i32 %203, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %208 = icmp ugt i8* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %191
  %210 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %211 = ptrtoint i8* %210 to i32
  store i32 %211, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  br label %212

212:                                              ; preds = %209, %191
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 4
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %220 = call i32 @ReadSect(i32 %215, i8* %218, i8* %219, i32* @cdReadMode)
  %221 = load i32, i32* @TRUE, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %212
  %224 = load i32, i32* @FALSE, align 4
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %225 = load i32, i32* @FALSE, align 4
  store i32 %225, i32* %2, align 4
  br label %230

226:                                              ; preds = %212
  br label %18

227:                                              ; preds = %18
  %228 = load i32, i32* @TRUE, align 4
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %229 = load i32, i32* @TRUE, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %227, %223, %188, %107, %101, %14
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @isValidDisc(...) #1

declare dso_local i32 @sceCdDiskReady(i32) #1

declare dso_local i32 @ReadSect(i32, i8*, i8*, i32*) #1

declare dso_local i32 @TocEntryCopy(%struct.TocEntry*, %struct.dirTocEntry*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i8* @strrchr(i64*, i8 signext) #1

declare dso_local i32 @strcat(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
