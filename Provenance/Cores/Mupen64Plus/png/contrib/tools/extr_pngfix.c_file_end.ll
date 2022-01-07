; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_file_end.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_file_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__*, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@READ_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"output write error\00", align 1
@WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @file_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_end(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 6
  %11 = call i32 @IDAT_end(i32** %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 5
  %20 = call i32 @chunk_end(i32** %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load %struct.file*, %struct.file** %2, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.file*, %struct.file** %2, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.file*, %struct.file** %2, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.file*, %struct.file** %2, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ferror(i32* %42)
  %44 = load %struct.file*, %struct.file** %2, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @fflush(i32* %46)
  %48 = or i32 %43, %47
  %49 = load %struct.file*, %struct.file** %2, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = or i32 %48, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %39
  %56 = load %struct.file*, %struct.file** %2, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @perror(i32 %58)
  %60 = load %struct.file*, %struct.file** %2, align 8
  %61 = load i32, i32* @READ_ERROR_CODE, align 4
  %62 = call i32 @emit_error(%struct.file* %60, i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @WRITE_ERROR, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %39
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.file*, %struct.file** %2, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %struct.file*, %struct.file** %2, align 8
  %76 = call i32 @CLEAR(%struct.file* byval(%struct.file) align 8 %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @IDAT_end(i32**) #1

declare dso_local i32 @chunk_end(i32**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @emit_error(%struct.file*, i32, i8*) #1

declare dso_local i32 @CLEAR(%struct.file* byval(%struct.file) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
