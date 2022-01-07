; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_update_entry_offsets.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_update_entry_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.cfil_info = type { %struct.cfil_entry* }
%struct.cfil_entry = type { %struct.cfe_buf, %struct.cfe_buf, i32* }
%struct.cfe_buf = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"so %llx outgoing %d datalen %u\00", align 1
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32, i32)* @cfil_update_entry_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_update_entry_offsets(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfil_entry*, align 8
  %10 = alloca %struct.cfe_buf*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @LOG_INFO, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %13)
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @CFIL_LOG(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  store i32 1, i32* %11, align 4
  br label %19

19:                                               ; preds = %98, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %101

23:                                               ; preds = %19
  %24 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %25 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %24, i32 0, i32 0
  %26 = load %struct.cfil_entry*, %struct.cfil_entry** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %26, i64 %29
  store %struct.cfil_entry* %30, %struct.cfil_entry** %9, align 8
  %31 = load %struct.cfil_entry*, %struct.cfil_entry** %9, align 8
  %32 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %98

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.cfil_entry*, %struct.cfil_entry** %9, align 8
  %41 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %40, i32 0, i32 1
  store %struct.cfe_buf* %41, %struct.cfe_buf** %10, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.cfil_entry*, %struct.cfil_entry** %9, align 8
  %44 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %43, i32 0, i32 0
  store %struct.cfe_buf* %44, %struct.cfe_buf** %10, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %48 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %53 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %58 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %60 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %65 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %67 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %70 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %45
  %74 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %75 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %78 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %45
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %82 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %88 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add i32 %90, %86
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.cfe_buf*, %struct.cfe_buf** %10, align 8
  %94 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %79, %35
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %19

101:                                              ; preds = %19
  %102 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %103 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %102)
  ret i32 0
}

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
