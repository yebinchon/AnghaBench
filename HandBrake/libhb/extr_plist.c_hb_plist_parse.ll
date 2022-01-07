; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_hb_plist_parse.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_hb_plist_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i8*, i8*, i32*, i32*, i64 }

@XML_SAX2_MAGIC = common dso_local global i32 0, align 4
@start_element = common dso_local global i32 0, align 4
@end_element = common dso_local global i32 0, align 4
@text_data = common dso_local global i32 0, align 4
@parse_warning = common dso_local global i32 0, align 4
@parse_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Plist parse failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_plist_parse(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i8* (...) @queue_new()
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = call i8* (...) @queue_new()
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 24)
  %18 = load i32, i32* @XML_SAX2_MAGIC, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @start_element, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @end_element, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @text_data, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @parse_warning, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @parse_error, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @xmlSAXUserParseMemory(%struct.TYPE_6__* %6, %struct.TYPE_7__* %7, i8* %30, i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @hb_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %61

37:                                               ; preds = %2
  %38 = call i32 (...) @xmlCleanupParser()
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @free(i32* %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @free(i32* %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %56 = call i32 @queue_free(i8** %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %58 = call i32 @queue_free(i8** %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %54, %35
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local i8* @queue_new(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xmlSAXUserParseMemory(%struct.TYPE_6__*, %struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @xmlCleanupParser(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @queue_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
