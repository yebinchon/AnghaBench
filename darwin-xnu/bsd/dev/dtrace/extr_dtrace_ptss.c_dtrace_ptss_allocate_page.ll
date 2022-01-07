; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace_ptss.c_dtrace_ptss_allocate_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace_ptss.c_dtrace_ptss_allocate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtrace_ptss_page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i8*, i8* }
%struct.proc = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PAGE_MAX_SIZE = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@IPC_PORT_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@DTRACE_PTSS_ENTRIES_PER_PAGE = common dso_local global i32 0, align 4
@DTRACE_PTSS_SCRATCH_SPACE_PER_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dtrace_ptss_page* @dtrace_ptss_allocate_page(%struct.proc* %0) #0 {
  %2 = alloca %struct.dtrace_ptss_page*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.dtrace_ptss_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  %14 = load i32, i32* @M_TEMP, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.dtrace_ptss_page* @_MALLOC(i32 8, i32 %14, i32 %17)
  store %struct.dtrace_ptss_page* %18, %struct.dtrace_ptss_page** %4, align 8
  %19 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %20 = icmp eq %struct.dtrace_ptss_page* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store %struct.dtrace_ptss_page* null, %struct.dtrace_ptss_page** %2, align 8
  br label %158

22:                                               ; preds = %1
  %23 = load %struct.proc*, %struct.proc** %3, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @get_task_map_reference(i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %148

31:                                               ; preds = %22
  %32 = load i64, i64* @PAGE_MAX_SIZE, align 8
  store i64 %32, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %33 = load i32, i32* @VM_PROT_READ, align 4
  %34 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @VM_PROT_READ, align 4
  %37 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VM_PROT_WRITE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %44 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %45 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %46 = load i32, i32* @IPC_PORT_NULL, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %51 = call i64 @mach_vm_map_kernel(i32* %41, i8** %8, i64 %42, i32 0, i32 %43, i32 %44, i32 %45, i32 %46, i32 0, i32 %47, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @KERN_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %31
  br label %148

56:                                               ; preds = %31
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %60 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %65 = call i64 @mach_vm_remap_kernel(i32* %57, i8** %9, i64 %58, i32 0, i32 %59, i32 %60, i32* %61, i8* %62, i32 %63, i32* %10, i32* %11, i32 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @KERN_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @VM_PROT_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %56
  br label %148

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* @VM_PROT_READ, align 4
  %80 = load i32, i32* @VM_PROT_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @mach_vm_protect(i32* %76, i8* %77, i64 %78, i32 0, i32 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @KERN_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %148

87:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %133, %87
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @DTRACE_PTSS_ENTRIES_PER_PAGE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %88
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @DTRACE_PTSS_SCRATCH_SPACE_PER_THREAD, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr i8, i8* %93, i64 %97
  %99 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %100 = getelementptr inbounds %struct.dtrace_ptss_page, %struct.dtrace_ptss_page* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i8* %98, i8** %105, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @DTRACE_PTSS_SCRATCH_SPACE_PER_THREAD, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr i8, i8* %106, i64 %110
  %112 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %113 = getelementptr inbounds %struct.dtrace_ptss_page, %struct.dtrace_ptss_page* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i8* %111, i8** %118, align 8
  %119 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %120 = getelementptr inbounds %struct.dtrace_ptss_page, %struct.dtrace_ptss_page* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %124
  %126 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %127 = getelementptr inbounds %struct.dtrace_ptss_page, %struct.dtrace_ptss_page* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store %struct.TYPE_2__* %125, %struct.TYPE_2__** %132, align 8
  br label %133

133:                                              ; preds = %92
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %88

136:                                              ; preds = %88
  %137 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %138 = getelementptr inbounds %struct.dtrace_ptss_page, %struct.dtrace_ptss_page* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* @DTRACE_PTSS_ENTRIES_PER_PAGE, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %144, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @vm_map_deallocate(i32* %145)
  %147 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  store %struct.dtrace_ptss_page* %147, %struct.dtrace_ptss_page** %2, align 8
  br label %158

148:                                              ; preds = %86, %74, %55, %30
  %149 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  %150 = load i32, i32* @M_TEMP, align 4
  %151 = call i32 @_FREE(%struct.dtrace_ptss_page* %149, i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @vm_map_deallocate(i32* %155)
  br label %157

157:                                              ; preds = %154, %148
  store %struct.dtrace_ptss_page* null, %struct.dtrace_ptss_page** %2, align 8
  br label %158

158:                                              ; preds = %157, %136, %21
  %159 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %2, align 8
  ret %struct.dtrace_ptss_page* %159
}

declare dso_local %struct.dtrace_ptss_page* @_MALLOC(i32, i32, i32) #1

declare dso_local i32* @get_task_map_reference(i32) #1

declare dso_local i64 @mach_vm_map_kernel(i32*, i8**, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mach_vm_remap_kernel(i32*, i8**, i64, i32, i32, i32, i32*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @mach_vm_protect(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @vm_map_deallocate(i32*) #1

declare dso_local i32 @_FREE(%struct.dtrace_ptss_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
