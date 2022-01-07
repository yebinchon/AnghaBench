; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_xmlstream.c_characterDataHandler.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_xmlstream.c_characterDataHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParserStruct = type { i64, %struct.MemoryStruct }
%struct.MemoryStruct = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Not enough memory (realloc returned NULL).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @characterDataHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @characterDataHandler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ParserStruct*, align 8
  %8 = alloca %struct.MemoryStruct*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ParserStruct*
  store %struct.ParserStruct* %11, %struct.ParserStruct** %7, align 8
  %12 = load %struct.ParserStruct*, %struct.ParserStruct** %7, align 8
  %13 = getelementptr inbounds %struct.ParserStruct, %struct.ParserStruct* %12, i32 0, i32 1
  store %struct.MemoryStruct* %13, %struct.MemoryStruct** %8, align 8
  %14 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %15 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %18 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = call i8* @realloc(i8* %16, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ParserStruct*, %struct.ParserStruct** %7, align 8
  %30 = getelementptr inbounds %struct.ParserStruct, %struct.ParserStruct* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %59

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %34 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %36 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %39 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @memcpy(i8* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %48 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %52 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.MemoryStruct*, %struct.MemoryStruct** %8, align 8
  %55 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %31, %26
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
