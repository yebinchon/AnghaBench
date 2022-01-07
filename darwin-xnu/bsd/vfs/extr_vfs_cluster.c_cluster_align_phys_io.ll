; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_align_phys_io.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_align_phys_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32 }
%struct.clios = type { i32 }

@IO_PASSIVE = common dso_local global i32 0, align 4
@CL_PASSIVE = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@CL_NOCACHE = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@CL_READ = common dso_local global i32 0, align 4
@UPL_WILL_MODIFY = common dso_local global i32 0, align 4
@UPL_FILE_IO = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UPL_ABORT_DUMP_PAGES = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uio*, i32, i64, i32, i32 (i32, i8*)*, i8*)* @cluster_align_phys_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_align_phys_io(i32 %0, %struct.uio* %1, i32 %2, i64 %3, i32 %4, i32 (i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.uio* %1, %struct.uio** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 (i32, i8*)* %5, i32 (i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @IO_PASSIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @CL_PASSIVE, align 4
  store i32 %30, i32* %24, align 4
  br label %32

31:                                               ; preds = %7
  store i32 0, i32* %24, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @IO_NOCACHE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @CL_NOCACHE, align 4
  %39 = load i32, i32* %24, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %24, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* @UPL_SET_LITE, align 4
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @CL_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @UPL_WILL_MODIFY, align 4
  %49 = load i32, i32* %23, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %23, align 4
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @UPL_FILE_IO, align 4
  %53 = load i32, i32* %23, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %23, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.uio*, %struct.uio** %10, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PAGE_MASK_64, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %66 = call i64 @ubc_create_upl_kernel(i32 %56, i32 %62, i32 %63, i32* %17, i32** %16, i32 %64, i32 %65)
  store i64 %66, i64* %19, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* @KERN_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %8, align 4
  br label %179

72:                                               ; preds = %55
  %73 = load i32*, i32** %16, align 8
  %74 = call i64 @upl_valid_page(i32* %73, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.uio*, %struct.uio** %10, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PAGE_MASK_64, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = load i32, i32* @CL_READ, align 4
  %87 = load i32, i32* %24, align 4
  %88 = or i32 %86, %87
  %89 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @cluster_io(i32 %77, i32 %78, i32 0, i32 %84, i32 %85, i32 %88, i32 0, %struct.clios* null, i32 (i32, i8*)* %89, i8* %90)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %76
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %98 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @ubc_upl_abort_range(i32 %95, i32 0, i32 %96, i32 %99)
  %101 = load i32, i32* %20, align 4
  store i32 %101, i32* %8, align 4
  br label %179

102:                                              ; preds = %76
  store i32 1, i32* %21, align 4
  br label %103

103:                                              ; preds = %102, %72
  %104 = load i32*, i32** %16, align 8
  %105 = call i64 @upl_phys_page(i32* %104, i32 0)
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load %struct.uio*, %struct.uio** %10, align 8
  %110 = getelementptr inbounds %struct.uio, %struct.uio* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PAGE_MASK_64, align 4
  %113 = and i32 %111, %112
  %114 = add nsw i32 %108, %113
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @CL_READ, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %103
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @copypv(i32 %120, i32 %121, i64 %122, i32 7)
  br label %129

124:                                              ; preds = %103
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @copypv(i32 %125, i32 %126, i64 %127, i32 11)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @CL_READ, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32*, i32** %16, align 8
  %136 = call i64 @upl_valid_page(i32* %135, i32 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %134
  %139 = load i32*, i32** %16, align 8
  %140 = call i64 @upl_dirty_page(i32* %139, i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %138, %129
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.uio*, %struct.uio** %10, align 8
  %146 = getelementptr inbounds %struct.uio, %struct.uio* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @PAGE_MASK_64, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @cluster_io(i32 %143, i32 %144, i32 0, i32 %150, i32 %151, i32 %152, i32 0, %struct.clios* null, i32 (i32, i8*)* %153, i8* %154)
  store i32 %155, i32* %20, align 4
  br label %156

156:                                              ; preds = %142, %138, %134
  %157 = load i32, i32* %20, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.uio*, %struct.uio** %10, align 8
  %161 = load i64, i64* %12, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @uio_update(%struct.uio* %160, i32 %162)
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  store i32 %168, i32* %22, align 4
  br label %173

169:                                              ; preds = %164
  %170 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %171 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %22, align 4
  br label %173

173:                                              ; preds = %169, %167
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* @PAGE_SIZE, align 4
  %176 = load i32, i32* %22, align 4
  %177 = call i32 @ubc_upl_abort_range(i32 %174, i32 0, i32 %175, i32 %176)
  %178 = load i32, i32* %20, align 4
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %173, %94, %70
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local i64 @ubc_create_upl_kernel(i32, i32, i32, i32*, i32**, i32, i32) #1

declare dso_local i64 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @cluster_io(i32, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i32, i32) #1

declare dso_local i64 @upl_phys_page(i32*, i32) #1

declare dso_local i32 @copypv(i32, i32, i64, i32) #1

declare dso_local i64 @upl_dirty_page(i32*, i32) #1

declare dso_local i32 @uio_update(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
