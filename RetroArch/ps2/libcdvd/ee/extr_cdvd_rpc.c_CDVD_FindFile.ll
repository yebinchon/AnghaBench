; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_FindFile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/ee/extr_cdvd_rpc.c_CDVD_FindFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TocEntry = type { i32 }

@cdvd_inited = common dso_local global i32 0, align 4
@sbuff = common dso_local global i32* null, align 8
@cd0 = common dso_local global i32 0, align 4
@CDVD_FINDFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_FindFile(i8* %0, %struct.TocEntry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TocEntry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TocEntry* %1, %struct.TocEntry** %5, align 8
  %6 = load i32, i32* @cdvd_inited, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strncpy(i8* bitcast (i32** @sbuff to i8*), i8* %10, i32 1024)
  %12 = load i32, i32* @CDVD_FINDFILE, align 4
  %13 = load i32*, i32** @sbuff, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = bitcast i32* %14 to i8*
  %16 = load i32*, i32** @sbuff, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @SifCallRpc(i32* @cd0, i32 %12, i32 0, i8* %15, i32 1024, i8* %18, i32 1028, i32 0, i32 0)
  %20 = load %struct.TocEntry*, %struct.TocEntry** %5, align 8
  %21 = load i32*, i32** @sbuff, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 256
  %23 = call i32 @memcpy(%struct.TocEntry* %20, i32* %22, i32 4)
  %24 = load i32*, i32** @sbuff, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %9, %8
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @SifCallRpc(i32*, i32, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TocEntry*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
