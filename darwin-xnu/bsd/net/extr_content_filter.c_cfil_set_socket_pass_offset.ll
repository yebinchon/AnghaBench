; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_set_socket_pass_offset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_set_socket_pass_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.cfil_info = type { i32, %struct.cfil_entry*, %struct.cfi_buf, %struct.cfi_buf }
%struct.cfil_entry = type { %struct.cfe_buf, %struct.cfe_buf, i32* }
%struct.cfe_buf = type { i64 }
%struct.cfi_buf = type { i64, i64, i64 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"so %llx outgoing %d\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"CFIL: <so %llx, sockID %llu> outgoing %d cfi_pending_first %llu cfi_pending_last %llu\00", align 1
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"CFIL: <so %llx, sockID %llu>, cfi_pass_offset %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32)* @cfil_set_socket_pass_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_set_socket_pass_offset(%struct.socket* %0, %struct.cfil_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfi_buf*, align 8
  %9 = alloca %struct.cfil_entry*, align 8
  %10 = alloca %struct.cfe_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %14 = icmp eq %struct.cfil_info* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

16:                                               ; preds = %3
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i8*, i64, i32, ...) @CFIL_LOG(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20)
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = call i32 @socket_lock_assert_owned(%struct.socket* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %28 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %27, i32 0, i32 3
  store %struct.cfi_buf* %28, %struct.cfi_buf** %8, align 8
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %31 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %30, i32 0, i32 2
  store %struct.cfi_buf* %31, %struct.cfi_buf** %8, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @LOG_DEBUG, align 4
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %34)
  %36 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %37 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.cfi_buf*, %struct.cfi_buf** %8, align 8
  %41 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cfi_buf*, %struct.cfi_buf** %8, align 8
  %44 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, i8*, i64, i32, ...) @CFIL_LOG(i32 %33, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %38, i32 %39, i64 %42, i64 %45)
  %47 = load %struct.cfi_buf*, %struct.cfi_buf** %8, align 8
  %48 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cfi_buf*, %struct.cfi_buf** %8, align 8
  %51 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %62 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %61, i32 0, i32 1
  %63 = load %struct.cfil_entry*, %struct.cfil_entry** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %63, i64 %66
  store %struct.cfil_entry* %67, %struct.cfil_entry** %9, align 8
  %68 = load %struct.cfil_entry*, %struct.cfil_entry** %9, align 8
  %69 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %96

73:                                               ; preds = %60
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.cfil_entry*, %struct.cfil_entry** %9, align 8
  %78 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %77, i32 0, i32 1
  store %struct.cfe_buf* %78, %struct.cfe_buf** %10, align 8
  br label %82

79:                                               ; preds = %73
  %80 = load %struct.cfil_entry*, %struct.cfil_entry** %9, align 8
  %81 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %80, i32 0, i32 0
  store %struct.cfe_buf* %81, %struct.cfe_buf** %10, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %87 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %82
  %92 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %93 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %56

99:                                               ; preds = %56
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.cfi_buf*, %struct.cfi_buf** %8, align 8
  %102 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %32
  %104 = load i32, i32* @LOG_DEBUG, align 4
  %105 = load %struct.socket*, %struct.socket** %5, align 8
  %106 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %105)
  %107 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %108 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cfi_buf*, %struct.cfi_buf** %8, align 8
  %111 = getelementptr inbounds %struct.cfi_buf, %struct.cfi_buf* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, i64, i32, ...) @CFIL_LOG(i32 %104, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %106, i32 %109, i64 %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %103, %15
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @CFIL_LOG(i32, i8*, i64, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
