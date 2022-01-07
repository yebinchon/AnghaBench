; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_GetDir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_GetDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TocEntry = type { i32 }

@cdvd_inited = common dso_local global i32 0, align 4
@sbuff = common dso_local global i32* null, align 8
@cd0 = common dso_local global i32 0, align 4
@CDVD_GETDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_GetDir(i8* %0, i8* %1, i32 %2, %struct.TocEntry* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TocEntry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TocEntry* %3, %struct.TocEntry** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* @cdvd_inited, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %72

18:                                               ; preds = %6
  %19 = load i32*, i32** @sbuff, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strncpy(i8* %20, i8* %21, i32 1023)
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** @sbuff, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 256
  store i32 0, i32* %27, align 4
  br label %34

28:                                               ; preds = %18
  %29 = load i32*, i32** @sbuff, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 256
  %31 = bitcast i32* %30 to i8*
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strncpy(i8* %31, i8* %32, i32 127)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** @sbuff, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 288
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TocEntry*, %struct.TocEntry** %11, align 8
  %39 = ptrtoint %struct.TocEntry* %38 to i32
  %40 = load i32*, i32** @sbuff, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 289
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** @sbuff, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 290
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TocEntry*, %struct.TocEntry** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @SifWriteBackDCache(%struct.TocEntry* %45, i32 %49)
  %51 = load i32, i32* @CDVD_GETDIR, align 4
  %52 = load i32*, i32** @sbuff, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = bitcast i32* %53 to i8*
  %55 = load i32*, i32** @sbuff, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @SifCallRpc(i32* @cd0, i32 %51, i32 0, i8* %54, i32 1164, i8* %57, i32 1028, i32 0, i32 0)
  %59 = load i32*, i32** @sbuff, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %34
  %65 = load i8*, i8** %13, align 8
  %66 = load i32*, i32** @sbuff, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = bitcast i32* %67 to i8*
  %69 = call i32 @strncpy(i8* %65, i8* %68, i32 1023)
  br label %70

70:                                               ; preds = %64, %34
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %17
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @SifWriteBackDCache(%struct.TocEntry*, i32) #1

declare dso_local i32 @SifCallRpc(i32*, i32, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
