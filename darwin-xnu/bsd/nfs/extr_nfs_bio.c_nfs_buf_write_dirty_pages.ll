; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.nfsbuf = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.nfsmount = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i64, i32, i32, i64)* }

@nfsstats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@NB_WRITEINPROG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NFS_WRITE_UNSTABLE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@NFS_WRITE_FILESYNC = common dso_local global i32 0, align 4
@NFSERR_STALEWRITEVERF = common dso_local global i32 0, align 4
@NB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_write_dirty_pages(%struct.nfsbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %25 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %26 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %25, i32 0, i32 6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__* %28)
  store %struct.nfsmount* %29, %struct.nfsmount** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %31 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %19, align 4
  %33 = call i32 @UIO_SIZEOF(i32 1)
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %22, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %23, align 8
  %37 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %38 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %260

42:                                               ; preds = %3
  %43 = call i32 @OSAddAtomic64(i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @nfsstats, i32 0, i32 0))
  %44 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %45 = call i32 @NFS_BUF_MAP(%struct.nfsbuf* %44)
  %46 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %47 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NB_WRITEINPROG, align 4
  %50 = call i32 @SET(i32 %48, i32 %49)
  %51 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %52 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* @NFS_WRITE_UNSTABLE, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* @UIO_SYSSPACE, align 4
  %58 = load i32, i32* @UIO_WRITE, align 4
  %59 = bitcast i8* %36 to i8**
  %60 = trunc i64 %34 to i32
  %61 = call i32 @uio_createwithbuffer(i32 1, i32 0, i32 %57, i32 %58, i8** %59, i32 %60)
  store i32 %61, i32* %21, align 4
  br label %62

62:                                               ; preds = %239, %185, %42
  %63 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %64 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %19, align 4
  %66 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %67 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %20, align 8
  %69 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %69, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %206, %62
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %209

74:                                               ; preds = %70
  %75 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @NBPGDIRTY(%struct.nfsbuf* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %206

80:                                               ; preds = %74
  store i32 1, i32* %16, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i64 @NBPGDIRTY(%struct.nfsbuf* %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i1 [ false, %81 ], [ %93, %87 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %81

99:                                               ; preds = %94
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %107 = call i64 @NBOFF(%struct.nfsbuf* %106)
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %99
  %119 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %120 = call i64 @NBOFF(%struct.nfsbuf* %119)
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = sub nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %118, %99
  %136 = load i32, i32* %14, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %188

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %142 = call i64 @NBOFF(%struct.nfsbuf* %141)
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i32, i32* @UIO_SYSSPACE, align 4
  %147 = load i32, i32* @UIO_WRITE, align 4
  %148 = call i32 @uio_reset(i32 %140, i64 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %151 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = call i32 @CAST_USER_ADDR_T(i64 %155)
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @uio_addiov(i32 %149, i32 %156, i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %164 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %163, i32 0, i32 2
  %165 = call i32 @nfs_write_rpc2(%struct.TYPE_8__* %159, i32 %160, i32 %161, i32 %162, i32* %13, i64* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %138
  br label %209

169:                                              ; preds = %138
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load i64, i64* %20, align 8
  %181 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %182 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %180, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %186, i32* %12, align 4
  br label %62

187:                                              ; preds = %179, %175
  br label %188

188:                                              ; preds = %187, %135
  br label %189

189:                                              ; preds = %204, %188
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %16, align 4
  %192 = icmp ne i32 %190, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %189
  %194 = load i32, i32* %15, align 4
  %195 = shl i32 1, %194
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %19, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %201, %193
  br label %189

205:                                              ; preds = %189
  br label %206

206:                                              ; preds = %205, %79
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %70

209:                                              ; preds = %168, %70
  %210 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %211 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @NB_WRITEINPROG, align 4
  %214 = call i32 @CLR(i32 %212, i32 %213)
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %242, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %242

221:                                              ; preds = %217
  %222 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %223 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32 (%struct.TYPE_8__*, i64, i32, i32, i64)*, i32 (%struct.TYPE_8__*, i64, i32, i32, i64)** %225, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %229 = call i64 @NBOFF(%struct.nfsbuf* %228)
  %230 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %231 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i64, i64* %20, align 8
  %235 = call i32 %226(%struct.TYPE_8__* %227, i64 %229, i32 %232, i32 %233, i64 %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @NFSERR_STALEWRITEVERF, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %221
  %240 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %240, i32* %12, align 4
  br label %62

241:                                              ; preds = %221
  br label %242

242:                                              ; preds = %241, %217, %209
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %19, align 4
  %247 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %248 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %258

249:                                              ; preds = %242
  %250 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %251 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @NB_ERROR, align 4
  %254 = call i32 @SET(i32 %252, i32 %253)
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.nfsbuf*, %struct.nfsbuf** %5, align 8
  %257 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %249, %245
  %259 = load i32, i32* %10, align 4
  store i32 %259, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %260

260:                                              ; preds = %258, %41
  %261 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %261)
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__*) #1

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @NFS_BUF_MAP(%struct.nfsbuf*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8**, i32) #1

declare dso_local i64 @NBPGDIRTY(%struct.nfsbuf*, i32) #1

declare dso_local i64 @NBOFF(%struct.nfsbuf*) #1

declare dso_local i32 @uio_reset(i32, i64, i32, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i64) #1

declare dso_local i32 @nfs_write_rpc2(%struct.TYPE_8__*, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @CLR(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
