; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_write_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, i32* }

@errno = common dso_local global i32 0, align 4
@WRITE_ERROR = common dso_local global i32 0, align 4
@WRITE_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"write byte\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32)* @write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_byte(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @putc(i32 %10, i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load i32, i32* @errno, align 4
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @WRITE_ERROR, align 4
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = load i32, i32* @WRITE_ERROR_CODE, align 4
  %28 = call i32 @stop(%struct.file* %26, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %17, %9
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  ret void
}

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @stop(%struct.file*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
