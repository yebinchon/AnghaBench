; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_register_well_known_mach_voucher_attr_manager.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_register_well_known_mach_voucher_attr_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }

@IVAM_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IV_UNUSED_KEYINDEX = common dso_local global i64 0, align 8
@IVAC_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@IV_UNUSED_VALINDEX = common dso_local global i64 0, align 8
@IVACE_REFS_MAX = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@IV_HASH_END = common dso_local global i64 0, align 8
@iv_global_table = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_register_well_known_mach_voucher_attr_manager(i64 %0, i32 %1, i32 %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %13 = load i64, i64* @IVAM_NULL, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %17, i32* %5, align 4
  br label %128

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @iv_key_to_index(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* @IV_UNUSED_KEYINDEX, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %25, i32* %5, align 4
  br label %128

26:                                               ; preds = %18
  %27 = load i64, i64* %11, align 8
  %28 = call %struct.TYPE_9__* @ivac_alloc(i64 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %10, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @IVAC_NULL, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = icmp eq %struct.TYPE_9__* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %33, i32* %5, align 4
  br label %128

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  store i32 %35, i32* %41, align 8
  %42 = load i8*, i8** @IVACE_REFS_MAX, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  store i8* %42, i8** %48, align 8
  %49 = load i8*, i8** @IVACE_REFS_MAX, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i8* %49, i8** %55, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %56, i32* %62, align 8
  %63 = load i64, i64* @IV_HASH_END, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %63, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = call i32 (...) @ivgt_lock()
  %75 = load i64, i64* @IVAM_NULL, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iv_global_table, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %34
  %83 = call i32 (...) @ivgt_unlock()
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = call i32 @ivac_release(%struct.TYPE_9__* %84)
  %86 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %86, i32* %5, align 4
  br label %128

87:                                               ; preds = %34
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iv_global_table, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iv_global_table, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iv_global_table, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @iv_hash_value(i64 %103, i32 %104)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* @IV_HASH_END, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %106, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i64, i64* @IV_UNUSED_VALINDEX, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i64 %117, i64* %123, align 8
  %124 = call i32 (...) @ivgt_unlock()
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %126, align 8
  %127 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %87, %82, %32, %24, %16
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i64 @iv_key_to_index(i32) #1

declare dso_local %struct.TYPE_9__* @ivac_alloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ivgt_lock(...) #1

declare dso_local i32 @ivgt_unlock(...) #1

declare dso_local i32 @ivac_release(%struct.TYPE_9__*) #1

declare dso_local i64 @iv_hash_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
