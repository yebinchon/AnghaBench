; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_remove_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_open_file_remove_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_file = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_OPEN_SHARE_DENY_NONE = common dso_local global i64 0, align 8
@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"nfs: open(R) delegated count underrun, %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nfs: open(R) count underrun, %d\00", align 1
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"nfs: open(W) delegated count underrun, %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"nfs: open(W) count underrun, %d\00", align 1
@NFS_OPEN_SHARE_ACCESS_BOTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"nfs: open(RW) delegated count underrun, %d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"nfs: open(RW) count underrun, %d\00", align 1
@NFS_OPEN_SHARE_DENY_WRITE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"nfs: open(R,DW) delegated count underrun, %d\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"nfs: open(R,DW) count underrun, %d\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"nfs: open(W,DW) delegated count underrun, %d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"nfs: open(W,DW) count underrun, %d\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"nfs: open(RW,DW) delegated count underrun, %d\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"nfs: open(RW,DW) count underrun, %d\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"nfs: open(R,DRW) delegated count underrun, %d\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"nfs: open(R,DRW) count underrun, %d\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"nfs: open(W,DRW) delegated count underrun, %d\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"nfs: open(W,DRW) count underrun, %d\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"nfs: open(RW,DRW) delegated count underrun, %d\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"nfs: open(RW,DRW) count underrun, %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_open_file_remove_open(%struct.nfs_open_file* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nfs_open_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nfs_open_file* %0, %struct.nfs_open_file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %10, i32 0, i32 18
  %12 = call i32 @lck_mtx_lock(i32* %11)
  %13 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @nfs_open_file_remove_open_find(%struct.nfs_open_file* %13, i64 %14, i64 %15, i64* %7, i64* %8, i32* %9)
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NFS_OPEN_SHARE_DENY_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %179

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %33, i32 0, i32 23
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %36, i32 0, i32 22
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kauth_cred_getuid(i32 %40)
  %42 = call i32 @NP(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %48

43:                                               ; preds = %27
  %44 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %45 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %32
  br label %71

49:                                               ; preds = %24
  %50 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %51 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %56 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %55, i32 0, i32 23
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %59 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %58, i32 0, i32 22
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kauth_cred_getuid(i32 %62)
  %64 = call i32 @NP(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %70

65:                                               ; preds = %49
  %66 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %54
  br label %71

71:                                               ; preds = %70, %48
  br label %178

72:                                               ; preds = %20
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_WRITE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %124

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %81 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %86 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %85, i32 0, i32 23
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %89 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %88, i32 0, i32 22
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @kauth_cred_getuid(i32 %92)
  %94 = call i32 @NP(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %100

95:                                               ; preds = %79
  %96 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %97 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %84
  br label %123

101:                                              ; preds = %76
  %102 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %103 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %108 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %107, i32 0, i32 23
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %111 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %110, i32 0, i32 22
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @kauth_cred_getuid(i32 %114)
  %116 = call i32 @NP(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %122

117:                                              ; preds = %101
  %118 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %119 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %117, %106
  br label %123

123:                                              ; preds = %122, %100
  br label %177

124:                                              ; preds = %72
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_BOTH, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %176

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %133 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %138 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %137, i32 0, i32 23
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %141 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %140, i32 0, i32 22
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @kauth_cred_getuid(i32 %144)
  %146 = call i32 @NP(i32 %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %152

147:                                              ; preds = %131
  %148 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %149 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %147, %136
  br label %175

153:                                              ; preds = %128
  %154 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %155 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %160 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %159, i32 0, i32 23
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %163 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %162, i32 0, i32 22
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @kauth_cred_getuid(i32 %166)
  %168 = call i32 @NP(i32 %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  br label %174

169:                                              ; preds = %153
  %170 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %171 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %169, %158
  br label %175

175:                                              ; preds = %174, %152
  br label %176

176:                                              ; preds = %175, %124
  br label %177

177:                                              ; preds = %176, %123
  br label %178

178:                                              ; preds = %177, %71
  br label %502

179:                                              ; preds = %3
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* @NFS_OPEN_SHARE_DENY_WRITE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %342

183:                                              ; preds = %179
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_READ, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %235

187:                                              ; preds = %183
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %187
  %191 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %192 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %197 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %196, i32 0, i32 23
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %200 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %199, i32 0, i32 22
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @kauth_cred_getuid(i32 %203)
  %205 = call i32 @NP(i32 %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  br label %211

206:                                              ; preds = %190
  %207 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %208 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, -1
  store i64 %210, i64* %208, align 8
  br label %211

211:                                              ; preds = %206, %195
  br label %234

212:                                              ; preds = %187
  %213 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %214 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %219 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %218, i32 0, i32 23
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %222 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %221, i32 0, i32 22
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @kauth_cred_getuid(i32 %225)
  %227 = call i32 @NP(i32 %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %226)
  br label %233

228:                                              ; preds = %212
  %229 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %230 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, -1
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %228, %217
  br label %234

234:                                              ; preds = %233, %211
  br label %341

235:                                              ; preds = %183
  %236 = load i64, i64* %5, align 8
  %237 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_WRITE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %287

239:                                              ; preds = %235
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %264

242:                                              ; preds = %239
  %243 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %244 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %243, i32 0, i32 8
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %242
  %248 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %249 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %248, i32 0, i32 23
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %252 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %251, i32 0, i32 22
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @kauth_cred_getuid(i32 %255)
  %257 = call i32 @NP(i32 %250, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %256)
  br label %263

258:                                              ; preds = %242
  %259 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %260 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %259, i32 0, i32 8
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %261, -1
  store i64 %262, i64* %260, align 8
  br label %263

263:                                              ; preds = %258, %247
  br label %286

264:                                              ; preds = %239
  %265 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %266 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %265, i32 0, i32 9
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %264
  %270 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %271 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %270, i32 0, i32 23
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %274 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %273, i32 0, i32 22
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @kauth_cred_getuid(i32 %277)
  %279 = call i32 @NP(i32 %272, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %278)
  br label %285

280:                                              ; preds = %264
  %281 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %282 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %281, i32 0, i32 9
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, -1
  store i64 %284, i64* %282, align 8
  br label %285

285:                                              ; preds = %280, %269
  br label %286

286:                                              ; preds = %285, %263
  br label %340

287:                                              ; preds = %235
  %288 = load i64, i64* %5, align 8
  %289 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_BOTH, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %339

291:                                              ; preds = %287
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %316

294:                                              ; preds = %291
  %295 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %296 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %295, i32 0, i32 10
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %294
  %300 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %301 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %300, i32 0, i32 23
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %304 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %303, i32 0, i32 22
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @kauth_cred_getuid(i32 %307)
  %309 = call i32 @NP(i32 %302, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %308)
  br label %315

310:                                              ; preds = %294
  %311 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %312 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %311, i32 0, i32 10
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %313, -1
  store i64 %314, i64* %312, align 8
  br label %315

315:                                              ; preds = %310, %299
  br label %338

316:                                              ; preds = %291
  %317 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %318 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %317, i32 0, i32 11
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %323 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %322, i32 0, i32 23
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %326 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %325, i32 0, i32 22
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @kauth_cred_getuid(i32 %329)
  %331 = call i32 @NP(i32 %324, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %330)
  br label %337

332:                                              ; preds = %316
  %333 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %334 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %333, i32 0, i32 11
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %335, -1
  store i64 %336, i64* %334, align 8
  br label %337

337:                                              ; preds = %332, %321
  br label %338

338:                                              ; preds = %337, %315
  br label %339

339:                                              ; preds = %338, %287
  br label %340

340:                                              ; preds = %339, %286
  br label %341

341:                                              ; preds = %340, %234
  br label %501

342:                                              ; preds = %179
  %343 = load i64, i64* %5, align 8
  %344 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_READ, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %394

346:                                              ; preds = %342
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %371

349:                                              ; preds = %346
  %350 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %351 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %350, i32 0, i32 12
  %352 = load i64, i64* %351, align 8
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %365

354:                                              ; preds = %349
  %355 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %356 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %355, i32 0, i32 23
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %359 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %358, i32 0, i32 22
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @kauth_cred_getuid(i32 %362)
  %364 = call i32 @NP(i32 %357, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %363)
  br label %370

365:                                              ; preds = %349
  %366 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %367 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %366, i32 0, i32 12
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, -1
  store i64 %369, i64* %367, align 8
  br label %370

370:                                              ; preds = %365, %354
  br label %393

371:                                              ; preds = %346
  %372 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %373 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %372, i32 0, i32 13
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %387

376:                                              ; preds = %371
  %377 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %378 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %377, i32 0, i32 23
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %381 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %380, i32 0, i32 22
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @kauth_cred_getuid(i32 %384)
  %386 = call i32 @NP(i32 %379, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %385)
  br label %392

387:                                              ; preds = %371
  %388 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %389 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %388, i32 0, i32 13
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %390, -1
  store i64 %391, i64* %389, align 8
  br label %392

392:                                              ; preds = %387, %376
  br label %393

393:                                              ; preds = %392, %370
  br label %500

394:                                              ; preds = %342
  %395 = load i64, i64* %5, align 8
  %396 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_WRITE, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %446

398:                                              ; preds = %394
  %399 = load i32, i32* %9, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %423

401:                                              ; preds = %398
  %402 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %403 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %402, i32 0, i32 14
  %404 = load i64, i64* %403, align 8
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %417

406:                                              ; preds = %401
  %407 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %408 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %407, i32 0, i32 23
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %411 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %410, i32 0, i32 22
  %412 = load %struct.TYPE_2__*, %struct.TYPE_2__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @kauth_cred_getuid(i32 %414)
  %416 = call i32 @NP(i32 %409, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %415)
  br label %422

417:                                              ; preds = %401
  %418 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %419 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %418, i32 0, i32 14
  %420 = load i64, i64* %419, align 8
  %421 = add nsw i64 %420, -1
  store i64 %421, i64* %419, align 8
  br label %422

422:                                              ; preds = %417, %406
  br label %445

423:                                              ; preds = %398
  %424 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %425 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %424, i32 0, i32 15
  %426 = load i64, i64* %425, align 8
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %423
  %429 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %430 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %429, i32 0, i32 23
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %433 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %432, i32 0, i32 22
  %434 = load %struct.TYPE_2__*, %struct.TYPE_2__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @kauth_cred_getuid(i32 %436)
  %438 = call i32 @NP(i32 %431, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %437)
  br label %444

439:                                              ; preds = %423
  %440 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %441 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %440, i32 0, i32 15
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %442, -1
  store i64 %443, i64* %441, align 8
  br label %444

444:                                              ; preds = %439, %428
  br label %445

445:                                              ; preds = %444, %422
  br label %499

446:                                              ; preds = %394
  %447 = load i64, i64* %5, align 8
  %448 = load i64, i64* @NFS_OPEN_SHARE_ACCESS_BOTH, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %498

450:                                              ; preds = %446
  %451 = load i32, i32* %9, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %475

453:                                              ; preds = %450
  %454 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %455 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %454, i32 0, i32 16
  %456 = load i64, i64* %455, align 8
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %453
  %459 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %460 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %459, i32 0, i32 23
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %463 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %462, i32 0, i32 22
  %464 = load %struct.TYPE_2__*, %struct.TYPE_2__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @kauth_cred_getuid(i32 %466)
  %468 = call i32 @NP(i32 %461, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 %467)
  br label %474

469:                                              ; preds = %453
  %470 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %471 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %470, i32 0, i32 16
  %472 = load i64, i64* %471, align 8
  %473 = add nsw i64 %472, -1
  store i64 %473, i64* %471, align 8
  br label %474

474:                                              ; preds = %469, %458
  br label %497

475:                                              ; preds = %450
  %476 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %477 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %476, i32 0, i32 17
  %478 = load i64, i64* %477, align 8
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %475
  %481 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %482 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %481, i32 0, i32 23
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %485 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %484, i32 0, i32 22
  %486 = load %struct.TYPE_2__*, %struct.TYPE_2__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @kauth_cred_getuid(i32 %488)
  %490 = call i32 @NP(i32 %483, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %489)
  br label %496

491:                                              ; preds = %475
  %492 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %493 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %492, i32 0, i32 17
  %494 = load i64, i64* %493, align 8
  %495 = add nsw i64 %494, -1
  store i64 %495, i64* %493, align 8
  br label %496

496:                                              ; preds = %491, %480
  br label %497

497:                                              ; preds = %496, %474
  br label %498

498:                                              ; preds = %497, %446
  br label %499

499:                                              ; preds = %498, %445
  br label %500

500:                                              ; preds = %499, %393
  br label %501

501:                                              ; preds = %500, %341
  br label %502

502:                                              ; preds = %501, %178
  %503 = load i64, i64* %7, align 8
  %504 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %505 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %504, i32 0, i32 21
  store i64 %503, i64* %505, align 8
  %506 = load i64, i64* %8, align 8
  %507 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %508 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %507, i32 0, i32 20
  store i64 %506, i64* %508, align 8
  %509 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %510 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %509, i32 0, i32 19
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 %511, -1
  store i32 %512, i32* %510, align 4
  %513 = load %struct.nfs_open_file*, %struct.nfs_open_file** %4, align 8
  %514 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %513, i32 0, i32 18
  %515 = call i32 @lck_mtx_unlock(i32* %514)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @nfs_open_file_remove_open_find(%struct.nfs_open_file*, i64, i64, i64*, i64*, i32*) #1

declare dso_local i32 @NP(i32, i8*, i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
