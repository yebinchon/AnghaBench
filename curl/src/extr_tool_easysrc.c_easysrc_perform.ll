; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_easysrc.c_easysrc_perform.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_easysrc.c_easysrc_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.curl_slist* }
%struct.curl_slist = type { i8*, %struct.curl_slist* }

@easysrc_toohard = common dso_local global %struct.TYPE_3__* null, align 8
@easysrc_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@srchard = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ret = curl_easy_perform(hnd);\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @easysrc_perform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.curl_slist*, align 8
  %3 = alloca i8*, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @easysrc_toohard, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %51

6:                                                ; preds = %0
  %7 = call i32 @easysrc_add(i32* @easysrc_code, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @CHKRET(i32 %7)
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %20, %6
  %10 = load i8**, i8*** @srchard, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @easysrc_add(i32* @easysrc_code, i8* %17)
  %19 = call i32 @CHKRET(i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @easysrc_toohard, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @easysrc_toohard, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.curl_slist*, %struct.curl_slist** %28, align 8
  store %struct.curl_slist* %29, %struct.curl_slist** %2, align 8
  br label %30

30:                                               ; preds = %39, %26
  %31 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %32 = icmp ne %struct.curl_slist* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %35 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @easysrc_add(i32* @easysrc_code, i8* %36)
  %38 = call i32 @CHKRET(i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %41 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %40, i32 0, i32 1
  %42 = load %struct.curl_slist*, %struct.curl_slist** %41, align 8
  store %struct.curl_slist* %42, %struct.curl_slist** %2, align 8
  br label %30

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %23
  %45 = call i32 @easysrc_add(i32* @easysrc_code, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @CHKRET(i32 %45)
  %47 = call i32 @easysrc_add(i32* @easysrc_code, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @CHKRET(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @easysrc_toohard, align 8
  %50 = call i32 @slist_wc_free_all(%struct.TYPE_3__* %49)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @easysrc_toohard, align 8
  br label %51

51:                                               ; preds = %44, %0
  %52 = call i32 @easysrc_add(i32* @easysrc_code, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @CHKRET(i32 %52)
  %54 = call i32 @easysrc_add(i32* @easysrc_code, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @CHKRET(i32 %54)
  %56 = call i32 @easysrc_add(i32* @easysrc_code, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @CHKRET(i32 %56)
  %58 = load i32, i32* @CURLE_OK, align 4
  ret i32 %58
}

declare dso_local i32 @CHKRET(i32) #1

declare dso_local i32 @easysrc_add(i32*, i8*) #1

declare dso_local i32 @slist_wc_free_all(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
