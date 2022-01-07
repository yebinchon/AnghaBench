; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_text_attr.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_handle_text_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@cc_channel = common dso_local global i64 0, align 8
@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0D608: text_attr: %02X %02X\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\0DThis is not a text attribute!\0A\00", align 1
@pac2_attribs = common dso_local global i8*** null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"  --  Color: %s,  font: %s\0A\00", align 1
@color_text = common dso_local global i8** null, align 8
@font_text = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, %struct.s_write*)* @handle_text_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_text_attr(i8 zeroext %0, i8 zeroext %1, %struct.s_write* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.s_write*, align 8
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.s_write* %2, %struct.s_write** %6, align 8
  %8 = load %struct.s_write*, %struct.s_write** %6, align 8
  %9 = getelementptr inbounds %struct.s_write, %struct.s_write* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.s_write*, %struct.s_write** %6, align 8
  %12 = getelementptr inbounds %struct.s_write, %struct.s_write* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %10, i64* %14, align 8
  %15 = load %struct.s_write*, %struct.s_write** %6, align 8
  %16 = getelementptr inbounds %struct.s_write, %struct.s_write* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @cc_channel, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %120

23:                                               ; preds = %3
  %24 = load i64, i64* @debug_608, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 17
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 25
  br i1 %39, label %48, label %40

40:                                               ; preds = %36, %32
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sgt i32 %46, 47
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %40, %36
  %49 = load i64, i64* @debug_608, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %120

53:                                               ; preds = %48, %44
  %54 = load i8, i8* %5, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 32
  store i32 %56, i32* %7, align 4
  %57 = load i8***, i8**** @pac2_attribs, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8**, i8*** %57, i64 %59
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.s_write*, %struct.s_write** %6, align 8
  %66 = getelementptr inbounds %struct.s_write, %struct.s_write* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 %64, i64* %68, align 8
  %69 = load i8***, i8**** @pac2_attribs, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8**, i8*** %69, i64 %71
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.s_write*, %struct.s_write** %6, align 8
  %78 = getelementptr inbounds %struct.s_write, %struct.s_write* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i64 %76, i64* %80, align 8
  %81 = load i64, i64* @debug_608, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %53
  %84 = load i8**, i8*** @color_text, align 8
  %85 = load %struct.s_write*, %struct.s_write** %6, align 8
  %86 = getelementptr inbounds %struct.s_write, %struct.s_write* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8*, i8** %84, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** @font_text, align 8
  %96 = load %struct.s_write*, %struct.s_write** %6, align 8
  %97 = getelementptr inbounds %struct.s_write, %struct.s_write* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %103)
  br label %105

105:                                              ; preds = %83, %53
  %106 = load %struct.s_write*, %struct.s_write** %6, align 8
  %107 = getelementptr inbounds %struct.s_write, %struct.s_write* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %110, 31
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.s_write*, %struct.s_write** %6, align 8
  %114 = getelementptr inbounds %struct.s_write, %struct.s_write* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %22, %119, %51
  ret void
}

declare dso_local i32 @hb_log(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
