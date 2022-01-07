; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_validate_root_image.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_validate_root_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunklist_hdr = type { i32, i64 }
%struct.chunklist_chunk = type { i64, i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.vnode = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"validating root dmg %s\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"namei failed (%s)\00", align 1
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get vnode size\00", align 1
@FREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to open vnode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"chunk size too big\00", align 1
@UIO_READ = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"vn_rdrw fail (err = %d, resid = %d)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"chunk covered non-existant part of image\00", align 1
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"SHA mismatch on chunk %lu (offset %lld, size %u)\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"chunklist did not cover entire file (offset = %lld, fsize = %lld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @validate_root_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_root_image(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.chunklist_hdr*, align 8
  %7 = alloca %struct.chunklist_chunk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nameidata, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.chunklist_hdr*
  store %struct.chunklist_hdr* %25, %struct.chunklist_hdr** %6, align 8
  store %struct.chunklist_chunk* null, %struct.chunklist_chunk** %7, align 8
  store i64 0, i64* %8, align 8
  %26 = bitcast %struct.nameidata* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 8, i1 false)
  store %struct.vnode* null, %struct.vnode** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %27 = call i32 (...) @vfs_context_kernel()
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @vfs_context_ucred(i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @vfs_context_proc(i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @AUTHDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @LOOKUP, align 4
  %35 = load i32, i32* @OP_OPEN, align 4
  %36 = load i32, i32* @LOCKLEAF, align 4
  %37 = load i32, i32* @UIO_SYSSPACE, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @CAST_USER_ADDR_T(i8* %38)
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @NDINIT(%struct.nameidata* %9, i32 %34, i32 %35, i32 %36, i32 %37, i32 %39, i32 %40)
  %42 = call i32 @namei(%struct.nameidata* %9)
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %193

47:                                               ; preds = %2
  %48 = call i32 @nameidone(%struct.nameidata* %9)
  %49 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  store %struct.vnode* %50, %struct.vnode** %10, align 8
  %51 = load %struct.vnode*, %struct.vnode** %10, align 8
  %52 = getelementptr inbounds %struct.vnode, %struct.vnode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VREG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %5, align 4
  br label %193

58:                                               ; preds = %47
  %59 = load %struct.vnode*, %struct.vnode** %10, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @vnode_size(%struct.vnode* %59, i32* %11, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %193

65:                                               ; preds = %58
  %66 = load %struct.vnode*, %struct.vnode** %10, align 8
  %67 = load i32, i32* @FREAD, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @VNOP_OPEN(%struct.vnode* %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %193

73:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %6, align 8
  %76 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %74, i64 %78
  %80 = bitcast i8* %79 to %struct.chunklist_chunk*
  store %struct.chunklist_chunk* %80, %struct.chunklist_chunk** %7, align 8
  store i64 0, i64* %8, align 8
  br label %81

81:                                               ; preds = %180, %73
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %6, align 8
  %84 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %183

87:                                               ; preds = %81
  store i32 0, i32* %19, align 4
  %88 = load i8*, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %103, label %90

90:                                               ; preds = %87
  %91 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %92 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @kalloc(i64 %93)
  store i8* %94, i8** %15, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @ENOMEM, align 4
  store i32 %98, i32* %5, align 4
  br label %193

99:                                               ; preds = %90
  %100 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %101 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %99, %87
  %104 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %105 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %5, align 4
  br label %193

112:                                              ; preds = %103
  %113 = load i32, i32* @UIO_READ, align 4
  %114 = load %struct.vnode*, %struct.vnode** %10, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %118 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @UIO_SYSSPACE, align 4
  %122 = load i32, i32* @IO_NODELOCKED, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @vn_rdwr(i32 %113, %struct.vnode* %114, i32 %116, i64 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32* %19, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %112
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %19, align 4
  %131 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %130)
  br label %193

132:                                              ; preds = %112
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %5, align 4
  %137 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %193

138:                                              ; preds = %132
  %139 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %140 = zext i32 %139 to i64
  %141 = call i8* @llvm.stacksave()
  store i8* %141, i8** %20, align 8
  %142 = alloca i32, i64 %140, align 16
  store i64 %140, i64* %21, align 8
  %143 = call i32 @SHA256_Init(i32* %22)
  %144 = load i8*, i8** %15, align 8
  %145 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %146 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @SHA256_Update(i32* %22, i8* %144, i64 %147)
  %149 = call i32 @SHA256_Final(i32* %142, i32* %22)
  %150 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %151 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %154 = call i64 @bcmp(i32* %142, i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %138
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %160 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %157, i32 %158, i64 %161)
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %5, align 4
  store i32 2, i32* %23, align 4
  br label %176

164:                                              ; preds = %138
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %167 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @os_add_overflow(i32 %165, i64 %168, i32* %12)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @EINVAL, align 4
  store i32 %172, i32* %5, align 4
  store i32 2, i32* %23, align 4
  br label %176

173:                                              ; preds = %164
  %174 = load %struct.chunklist_chunk*, %struct.chunklist_chunk** %7, align 8
  %175 = getelementptr inbounds %struct.chunklist_chunk, %struct.chunklist_chunk* %174, i32 1
  store %struct.chunklist_chunk* %175, %struct.chunklist_chunk** %7, align 8
  store i32 0, i32* %23, align 4
  br label %176

176:                                              ; preds = %171, %156, %173
  %177 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %23, align 4
  switch i32 %178, label %211 [
    i32 0, label %179
    i32 2, label %193
  ]

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %8, align 8
  br label %81

183:                                              ; preds = %81
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %188, i32 %189)
  %191 = load i32, i32* @EINVAL, align 4
  store i32 %191, i32* %5, align 4
  br label %193

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %187, %176, %135, %128, %109, %97, %71, %63, %56, %44
  %194 = load i8*, i8** %15, align 8
  %195 = call i32 @kfree_safe(i8* %194)
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.vnode*, %struct.vnode** %10, align 8
  %200 = load i32, i32* @FREAD, align 4
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @VNOP_CLOSE(%struct.vnode* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.vnode*, %struct.vnode** %10, align 8
  %205 = icmp ne %struct.vnode* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.vnode*, %struct.vnode** %10, align 8
  %208 = call i32 @vnode_put(%struct.vnode* %207)
  store %struct.vnode* null, %struct.vnode** %10, align 8
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %5, align 4
  ret i32 %210

211:                                              ; preds = %176
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vfs_context_kernel(...) #2

declare dso_local i32 @vfs_context_ucred(i32) #2

declare dso_local i32 @vfs_context_proc(i32) #2

declare dso_local i32 @AUTHDBG(i8*, i8*) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @AUTHPRNT(i8*, ...) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i32 @vnode_size(%struct.vnode*, i32*, i32) #2

declare dso_local i32 @VNOP_OPEN(%struct.vnode*, i32, i32) #2

declare dso_local i8* @kalloc(i64) #2

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i32, i64, i32, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @SHA256_Init(i32*) #2

declare dso_local i32 @SHA256_Update(i32*, i8*, i64) #2

declare dso_local i32 @SHA256_Final(i32*, i32*) #2

declare dso_local i64 @bcmp(i32*, i32, i32) #2

declare dso_local i64 @os_add_overflow(i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @kfree_safe(i8*) #2

declare dso_local i32 @VNOP_CLOSE(%struct.vnode*, i32, i32) #2

declare dso_local i32 @vnode_put(%struct.vnode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
