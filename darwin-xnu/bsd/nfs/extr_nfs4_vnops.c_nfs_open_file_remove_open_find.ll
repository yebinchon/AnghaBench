; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_remove_open_find.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_remove_open_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_file = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_READ = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_open_file_remove_open_find(%struct.nfs_open_file* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.nfs_open_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.nfs_open_file* %0, %struct.nfs_open_file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %18 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %6
  %26 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %25
  %33 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %53 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %61 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %65 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %69 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %73 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %77 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %32
  %82 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %32, %25, %6
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %154

92:                                               ; preds = %87
  %93 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %94 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %154

99:                                               ; preds = %92
  %100 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %101 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %104 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %108 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %112 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %116 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %120 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %119, i32 0, i32 15
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %118, %121
  %123 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %124 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %128 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %132 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %131, i32 0, i32 16
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  %135 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %136 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %135, i32 0, i32 17
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %140 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %144 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %154

148:                                              ; preds = %99
  %149 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %150 = xor i32 %149, -1
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %99, %92, %87
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @NFS_OPEN_SHARE_DENY_READ, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %197

159:                                              ; preds = %154
  %160 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %161 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NFS_OPEN_SHARE_DENY_READ, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %159
  %167 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %168 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %171 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %170, i32 0, i32 11
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %175 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %174, i32 0, i32 16
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %179 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %178, i32 0, i32 17
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %183 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %182, i32 0, i32 18
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  %186 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %187 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %186, i32 0, i32 19
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %185, %188
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %197

191:                                              ; preds = %166
  %192 = load i32, i32* @NFS_OPEN_SHARE_DENY_READ, align 4
  %193 = xor i32 %192, -1
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, %193
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %166, %159, %154
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %264

202:                                              ; preds = %197
  %203 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %204 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %264

209:                                              ; preds = %202
  %210 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %211 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %210, i32 0, i32 10
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %214 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %212, %215
  %217 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %218 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %217, i32 0, i32 16
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  %221 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %222 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %221, i32 0, i32 17
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %220, %223
  %225 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %226 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %225, i32 0, i32 18
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  %229 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %230 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %229, i32 0, i32 19
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %228, %231
  %233 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %234 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  %237 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %238 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %242 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %241, i32 0, i32 14
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %240, %243
  %245 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %246 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %245, i32 0, i32 15
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %244, %247
  %249 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %250 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %249, i32 0, i32 8
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %248, %251
  %253 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %254 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %252, %255
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %264

258:                                              ; preds = %209
  %259 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  %260 = xor i32 %259, -1
  %261 = load i32*, i32** %11, align 8
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %260
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %258, %209, %202, %197
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @NFS_OPEN_SHARE_DENY_NONE, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %306

268:                                              ; preds = %264
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %274 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i32
  %278 = load i32*, i32** %12, align 8
  store i32 %277, i32* %278, align 4
  br label %305

279:                                              ; preds = %268
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %279
  %284 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %285 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %284, i32 0, i32 13
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i32
  %289 = load i32*, i32** %12, align 8
  store i32 %288, i32* %289, align 4
  br label %304

290:                                              ; preds = %279
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %290
  %295 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %296 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = load i32*, i32** %12, align 8
  store i32 %299, i32* %300, align 4
  br label %303

301:                                              ; preds = %290
  %302 = load i32*, i32** %12, align 8
  store i32 0, i32* %302, align 4
  br label %303

303:                                              ; preds = %301, %294
  br label %304

304:                                              ; preds = %303, %283
  br label %305

305:                                              ; preds = %304, %272
  br label %387

306:                                              ; preds = %264
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* @NFS_OPEN_SHARE_DENY_WRITE, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %348

310:                                              ; preds = %306
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %310
  %315 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %316 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i32
  %320 = load i32*, i32** %12, align 8
  store i32 %319, i32* %320, align 4
  br label %347

321:                                              ; preds = %310
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %321
  %326 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %327 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %326, i32 0, i32 15
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  %330 = zext i1 %329 to i32
  %331 = load i32*, i32** %12, align 8
  store i32 %330, i32* %331, align 4
  br label %346

332:                                              ; preds = %321
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %332
  %337 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %338 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %337, i32 0, i32 9
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i32
  %342 = load i32*, i32** %12, align 8
  store i32 %341, i32* %342, align 4
  br label %345

343:                                              ; preds = %332
  %344 = load i32*, i32** %12, align 8
  store i32 0, i32* %344, align 4
  br label %345

345:                                              ; preds = %343, %336
  br label %346

346:                                              ; preds = %345, %325
  br label %347

347:                                              ; preds = %346, %314
  br label %386

348:                                              ; preds = %306
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %359

352:                                              ; preds = %348
  %353 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %354 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %353, i32 0, i32 11
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = load i32*, i32** %12, align 8
  store i32 %357, i32* %358, align 4
  br label %385

359:                                              ; preds = %348
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %365 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %364, i32 0, i32 17
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  %368 = zext i1 %367 to i32
  %369 = load i32*, i32** %12, align 8
  store i32 %368, i32* %369, align 4
  br label %384

370:                                              ; preds = %359
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_BOTH, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %381

374:                                              ; preds = %370
  %375 = load %struct.nfs_open_file*, %struct.nfs_open_file** %7, align 8
  %376 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %375, i32 0, i32 19
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  %379 = zext i1 %378 to i32
  %380 = load i32*, i32** %12, align 8
  store i32 %379, i32* %380, align 4
  br label %383

381:                                              ; preds = %370
  %382 = load i32*, i32** %12, align 8
  store i32 0, i32* %382, align 4
  br label %383

383:                                              ; preds = %381, %374
  br label %384

384:                                              ; preds = %383, %363
  br label %385

385:                                              ; preds = %384, %352
  br label %386

386:                                              ; preds = %385, %347
  br label %387

387:                                              ; preds = %386, %305
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
