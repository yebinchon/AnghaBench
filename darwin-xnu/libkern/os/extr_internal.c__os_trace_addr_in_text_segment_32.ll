; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_internal.c__os_trace_addr_in_text_segment_32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_internal.c__os_trace_addr_in_text_segment_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mach_header = type { i64 }
%struct.segment_command = type { i64, i64, i64, i32, i32 }

@LC_SEGMENT = common dso_local global i64 0, align 8
@SEG_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_os_trace_addr_in_text_segment_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_os_trace_addr_in_text_segment_32(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mach_header*, align 8
  %7 = alloca %struct.segment_command*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mach_header*
  store %struct.mach_header* %10, %struct.mach_header** %6, align 8
  %11 = load %struct.mach_header*, %struct.mach_header** %6, align 8
  %12 = bitcast %struct.mach_header* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = bitcast i8* %13 to %struct.segment_command*
  store %struct.segment_command* %14, %struct.segment_command** %7, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %65, %2
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.mach_header*, %struct.mach_header** %6, align 8
  %18 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %15
  %22 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %23 = getelementptr inbounds %struct.segment_command, %struct.segment_command* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LC_SEGMENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %29 = getelementptr inbounds %struct.segment_command, %struct.segment_command* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SEG_TEXT, align 4
  %32 = call i64 @strncmp(i32 %30, i32 %31, i32 4)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %38 = getelementptr inbounds %struct.segment_command, %struct.segment_command* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %45 = getelementptr inbounds %struct.segment_command, %struct.segment_command* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %48 = getelementptr inbounds %struct.segment_command, %struct.segment_command* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = icmp ult i64 %43, %50
  br label %52

52:                                               ; preds = %41, %34
  %53 = phi i1 [ false, %34 ], [ %51, %41 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %69

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %58 = bitcast %struct.segment_command* %57 to i8*
  %59 = load %struct.segment_command*, %struct.segment_command** %7, align 8
  %60 = getelementptr inbounds %struct.segment_command, %struct.segment_command* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = bitcast i8* %63 to %struct.segment_command*
  store %struct.segment_command* %64, %struct.segment_command** %7, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %15

68:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
