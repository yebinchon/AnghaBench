; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_fat_imgact.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_fat_imgact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32, i32, i32, i8*, i8*, i32, i64, i32 }
%struct.fat_header = type { i32 }
%struct._posix_spawnattr = type { i64* }
%struct.fat_arch = type { i32, i32, i64, i64 }

@FAT_MAGIC = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@LOAD_SUCCESS = common dso_local global i64 0, align 8
@NBINPREFS = common dso_local global i64 0, align 8
@EBADARCH = common dso_local global i32 0, align 4
@CPU_TYPE_ANY = common dso_local global i64 0, align 8
@EBADEXEC = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @exec_fat_imgact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_fat_imgact(%struct.image_params* %0) #0 {
  %2 = alloca %struct.image_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fat_header*, align 8
  %6 = alloca %struct._posix_spawnattr*, align 8
  %7 = alloca %struct.fat_arch, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.image_params* %0, %struct.image_params** %2, align 8
  %13 = load %struct.image_params*, %struct.image_params** %2, align 8
  %14 = getelementptr inbounds %struct.image_params, %struct.image_params* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @vfs_context_proc(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @kauth_cred_proc_ref(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.image_params*, %struct.image_params** %2, align 8
  %20 = getelementptr inbounds %struct.image_params, %struct.image_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.fat_header*
  store %struct.fat_header* %23, %struct.fat_header** %5, align 8
  store %struct._posix_spawnattr* null, %struct._posix_spawnattr** %6, align 8
  %24 = load %struct.image_params*, %struct.image_params** %2, align 8
  %25 = getelementptr inbounds %struct.image_params, %struct.image_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 -1, i32* %9, align 4
  br label %165

29:                                               ; preds = %1
  %30 = load %struct.fat_header*, %struct.fat_header** %5, align 8
  %31 = getelementptr inbounds %struct.fat_header, %struct.fat_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @OSSwapBigToHostInt32(i32 %32)
  %34 = load i64, i64* @FAT_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %9, align 4
  br label %165

37:                                               ; preds = %29
  %38 = load %struct.fat_header*, %struct.fat_header** %5, align 8
  %39 = ptrtoint %struct.fat_header* %38 to i32
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i64 @fatfile_validate_fatarches(i32 %39, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @LOAD_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @load_return_to_errno(i64 %46)
  store i32 %47, i32* %9, align 4
  br label %165

48:                                               ; preds = %37
  %49 = load %struct.image_params*, %struct.image_params** %2, align 8
  %50 = getelementptr inbounds %struct.image_params, %struct.image_params* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct._posix_spawnattr*
  store %struct._posix_spawnattr* %52, %struct._posix_spawnattr** %6, align 8
  %53 = load %struct._posix_spawnattr*, %struct._posix_spawnattr** %6, align 8
  %54 = icmp ne %struct._posix_spawnattr* %53, null
  br i1 %54, label %55, label %99

55:                                               ; preds = %48
  %56 = load %struct._posix_spawnattr*, %struct._posix_spawnattr** %6, align 8
  %57 = getelementptr inbounds %struct._posix_spawnattr, %struct._posix_spawnattr* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %55
  store i64 0, i64* %11, align 8
  store i64 0, i64* %11, align 8
  br label %63

63:                                               ; preds = %94, %62
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @NBINPREFS, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %63
  %68 = load %struct._posix_spawnattr*, %struct._posix_spawnattr** %6, align 8
  %69 = getelementptr inbounds %struct._posix_spawnattr, %struct._posix_spawnattr* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @EBADARCH, align 4
  store i32 %77, i32* %9, align 4
  br label %165

78:                                               ; preds = %67
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @CPU_TYPE_ANY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %100

83:                                               ; preds = %78
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.fat_header*, %struct.fat_header** %5, align 8
  %86 = ptrtoint %struct.fat_header* %85 to i32
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i64 @fatfile_getbestarch_for_cputype(i64 %84, i32 %86, i32 %87, %struct.fat_arch* %7)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @LOAD_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %112

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  br label %63

97:                                               ; preds = %63
  %98 = load i32, i32* @EBADEXEC, align 4
  store i32 %98, i32* %9, align 4
  br label %165

99:                                               ; preds = %55, %48
  br label %100

100:                                              ; preds = %99, %82
  %101 = load %struct.fat_header*, %struct.fat_header** %5, align 8
  %102 = ptrtoint %struct.fat_header* %101 to i32
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i64 @fatfile_getbestarch(i32 %102, i32 %103, %struct.fat_arch* %7)
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @LOAD_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @load_return_to_errno(i64 %109)
  store i32 %110, i32* %9, align 4
  br label %165

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32, i32* @UIO_READ, align 4
  %114 = load %struct.image_params*, %struct.image_params** %2, align 8
  %115 = getelementptr inbounds %struct.image_params, %struct.image_params* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.image_params*, %struct.image_params** %2, align 8
  %118 = getelementptr inbounds %struct.image_params, %struct.image_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %7, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @UIO_SYSSPACE, align 4
  %124 = load i32, i32* @IO_UNIT, align 4
  %125 = load i32, i32* @IO_NODELOCKED, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @vn_rdwr(i32 %113, i32 %116, i32 %119, i32 %120, i64 %122, i32 %123, i32 %126, i32 %127, i32* %8, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %112
  br label %165

133:                                              ; preds = %112
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.image_params*, %struct.image_params** %2, align 8
  %138 = getelementptr inbounds %struct.image_params, %struct.image_params* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @PAGE_SIZE, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @memset(i32 %143, i32 0, i32 %144)
  br label %146

146:                                              ; preds = %136, %133
  store i32 -2, i32* %9, align 4
  %147 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %7, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.image_params*, %struct.image_params** %2, align 8
  %151 = getelementptr inbounds %struct.image_params, %struct.image_params* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %7, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.image_params*, %struct.image_params** %2, align 8
  %156 = getelementptr inbounds %struct.image_params, %struct.image_params* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %7, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.image_params*, %struct.image_params** %2, align 8
  %160 = getelementptr inbounds %struct.image_params, %struct.image_params* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %7, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.image_params*, %struct.image_params** %2, align 8
  %164 = getelementptr inbounds %struct.image_params, %struct.image_params* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %146, %132, %108, %97, %76, %45, %36, %28
  %166 = call i32 @kauth_cred_unref(i32* %4)
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i64 @OSSwapBigToHostInt32(i32) #1

declare dso_local i64 @fatfile_validate_fatarches(i32, i32) #1

declare dso_local i32 @load_return_to_errno(i64) #1

declare dso_local i64 @fatfile_getbestarch_for_cputype(i64, i32, i32, %struct.fat_arch*) #1

declare dso_local i64 @fatfile_getbestarch(i32, i32, %struct.fat_arch*) #1

declare dso_local i32 @vn_rdwr(i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
