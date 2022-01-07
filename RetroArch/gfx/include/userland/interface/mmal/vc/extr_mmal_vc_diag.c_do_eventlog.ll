; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_eventlog.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_diag.c_do_eventlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to open videocore memory: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mmal_dbg_log\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not get MMAL log address\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Could not read MMAL log pointer at address 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not read MMAL log at address 0x%x\0A\00", align 1
@MMAL_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Bad magic 0x%08x in log at 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"MMAL Log size mismatch (got %d, expected %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"MMAL log element size mismatch (got %d, expected %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"reading MMAL log at 0x%x version %d magic %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%d events, %d entries each size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_eventlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_eventlog(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @OpenVideoCoreMemory(i32* %6)
  store i32 %14, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %3, align 4
  br label %97

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @LookupVideoCoreSymbol(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %7, i64* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %94

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ReadVideoCoreUInt32(i32 %28, i32* %9, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %94

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ReadVideoCoreMemory(i32 %37, %struct.TYPE_4__* %10, i32 %38, i32 24)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %94

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MMAL_MAGIC, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %54)
  br label %94

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 24
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @stderr, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %64, i64 24)
  br label %94

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %74, i64 4)
  br label %94

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %77, i32 %79, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %84, i32 %86, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @print_mmal_event_log(i32 %90, %struct.TYPE_4__* %10)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @CloseVideoCoreMemory(i32 %92)
  store i32 0, i32* %3, align 4
  br label %97

94:                                               ; preds = %71, %61, %50, %41, %32, %24
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @CloseVideoCoreMemory(i32 %95)
  store i32 -1, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %76, %16
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @OpenVideoCoreMemory(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @LookupVideoCoreSymbol(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ReadVideoCoreUInt32(i32, i32*, i32) #1

declare dso_local i32 @ReadVideoCoreMemory(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @print_mmal_event_log(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @CloseVideoCoreMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
