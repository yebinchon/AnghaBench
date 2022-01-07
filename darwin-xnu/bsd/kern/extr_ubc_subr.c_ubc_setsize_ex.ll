; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_setsize_ex.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_setsize_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.ubc_info* }
%struct.ubc_info = type { i64, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UBC_SETSIZE_NO_FS_REENTRY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NOTE_EXTEND = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@UPL_SET_LITE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ubc_setsize: ubc_create_upl (error = %d)\0A\00", align 1
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@MEMORY_OBJECT_DATA_FLUSH_ALL = common dso_local global i32 0, align 4
@MEMORY_OBJECT_DATA_FLUSH = common dso_local global i32 0, align 4
@MEMORY_OBJECT_RETURN_NONE = common dso_local global i32 0, align 4
@VM_PROT_NO_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ubc_setsize: invalidate failed (error = %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubc_setsize_ex(%struct.vnode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ubc_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %142

23:                                               ; preds = %3
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = call i32 @UBCINFOEXISTS(%struct.vnode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %4, align 4
  br label %142

29:                                               ; preds = %23
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load %struct.ubc_info*, %struct.ubc_info** %31, align 8
  store %struct.ubc_info* %32, %struct.ubc_info** %12, align 8
  %33 = load %struct.ubc_info*, %struct.ubc_info** %12, align 8
  %34 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @UBC_SETSIZE_NO_FS_REENTRY, align 4
  %38 = call i64 @ISSET(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @EAGAIN, align 4
  store i32 %45, i32* %4, align 4
  br label %142

46:                                               ; preds = %40, %29
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.ubc_info*, %struct.ubc_info** %12, align 8
  %49 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.vnode*, %struct.vnode** %5, align 8
  %59 = load i32, i32* @NOTE_EXTEND, align 4
  %60 = call i32 @lock_vnode_and_post(%struct.vnode* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  store i32 0, i32* %4, align 4
  br label %142

62:                                               ; preds = %46
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @trunc_page_64(i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @round_page_64(i64 %65)
  store i64 %66, i64* %10, align 8
  %67 = load %struct.ubc_info*, %struct.ubc_info** %12, align 8
  %68 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @assert(i32 %70)
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @PAGE_MASK_64, align 8
  %74 = and i64 %72, %73
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %62
  %78 = load %struct.vnode*, %struct.vnode** %5, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i32, i32* @UPL_SET_LITE, align 4
  %82 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %83 = call i64 @ubc_create_upl_kernel(%struct.vnode* %78, i64 %79, i64 %80, i32* %15, i32** %16, i32 %81, i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @KERN_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %87, %77
  %91 = load i32*, i32** %16, align 8
  %92 = call i64 @upl_valid_page(i32* %91, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = load i64, i64* %11, align 8
  %99 = sub nsw i64 %97, %98
  %100 = call i32 @cluster_zero(i32 %95, i64 %96, i64 %99, i32* null)
  br label %101

101:                                              ; preds = %94, %90
  %102 = load i32, i32* %15, align 4
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %105 = call i32 @ubc_upl_abort_range(i32 %102, i32 0, i64 %103, i32 %104)
  %106 = load i64, i64* @PAGE_SIZE_64, align 8
  %107 = load i64, i64* %9, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %101, %62
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH_ALL, align 4
  store i32 %117, i32* %17, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH, align 4
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i32, i32* %13, align 4
  %122 = load i64, i64* %9, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = sub nsw i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @MEMORY_OBJECT_RETURN_NONE, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @VM_PROT_NO_CHANGE, align 4
  %131 = call i64 @memory_object_lock_request(i32 %121, i32 %123, i32 %127, i32* null, i32* null, i32 %128, i32 %129, i32 %130)
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @KERN_SUCCESS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load i64, i64* %14, align 8
  %137 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %135, %120
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i64, i64* %14, align 8
  %141 = call i32 @mach_to_bsd_errno(i64 %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %61, %44, %27, %21
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @lock_vnode_and_post(%struct.vnode*, i32) #1

declare dso_local i64 @trunc_page_64(i64) #1

declare dso_local i64 @round_page_64(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ubc_create_upl_kernel(%struct.vnode*, i64, i64, i32*, i32**, i32, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i64 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @cluster_zero(i32, i64, i64, i32*) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i64, i32) #1

declare dso_local i64 @memory_object_lock_request(i32, i32, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @mach_to_bsd_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
