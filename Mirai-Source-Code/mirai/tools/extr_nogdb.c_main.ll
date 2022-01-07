; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_nogdb.c_main.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_nogdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@main.header = internal global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c".: Elf corrupt :.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Usage: %s file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"[*] Current header values:\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\09e_shoff:%d\0A\09e_shnum:%d\0A\09e_shstrndx:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"[*] Patched header values:\0A\00", align 1
@MS_SYNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"msync\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"You should no more be able to run \22%s\22 inside GDB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i32 1, i32* %3, align 4
  br label %83

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %83

24:                                               ; preds = %15
  %25 = load i32, i32* @PROT_READ, align 4
  %26 = load i32, i32* @PROT_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAP_SHARED, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @mmap(i32* null, i32 8, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** @main.header, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MAP_FAILED, align 8
  %33 = icmp eq %struct.TYPE_4__* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @close(i32 %36)
  store i32 1, i32* %3, align 4
  br label %83

38:                                               ; preds = %24
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 65535, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 65535, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 65535, i32* %55, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* @MS_SYNC, align 4
  %68 = call i32 @msync(i32* null, i32 0, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %38
  %71 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @close(i32 %72)
  store i32 1, i32* %3, align 4
  br label %83

74:                                               ; preds = %38
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main.header, align 8
  %78 = call i32 @munmap(%struct.TYPE_4__* %77, i32 0)
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %70, %34, %22, %10
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @msync(i32*, i32, i32) #1

declare dso_local i32 @munmap(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
