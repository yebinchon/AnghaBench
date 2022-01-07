; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1900.c_parse_url_file.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1900.c_parse_url_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_handles = common dso_local global i64 0, align 8
@blacklist_num_sites = common dso_local global i64 0, align 8
@blacklist_num_servers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %199s\0A\00", align 1
@urltime = common dso_local global i32* null, align 8
@urlstring = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"blacklist_site %199s\0A\00", align 1
@site_blacklist = common dso_local global i32** null, align 8
@server_blacklist = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_url_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_url_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [200 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i64 0, i64* @num_handles, align 8
  store i64 0, i64* @blacklist_num_sites, align 8
  store i64 0, i64* @blacklist_num_servers, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %40, %23, %12
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @feof(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %21 = call i64 (i32*, i8*, ...) @fscanf(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %5, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** @urltime, align 8
  %26 = load i64, i64* @num_handles, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %29 = call i8* @strdup(i8* %28)
  %30 = load i8**, i8*** @urlstring, align 8
  %31 = load i64, i64* @num_handles, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %29, i8** %32, align 8
  %33 = load i64, i64* @num_handles, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @num_handles, align 8
  br label %13

35:                                               ; preds = %18
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %38 = call i64 (i32*, i8*, ...) @fscanf(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %42 = call i8* @strdup(i8* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load i32**, i32*** @site_blacklist, align 8
  %45 = load i64, i64* @blacklist_num_sites, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  store i32* %43, i32** %46, align 8
  %47 = load i64, i64* @blacklist_num_sites, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @blacklist_num_sites, align 8
  br label %13

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i32**, i32*** @site_blacklist, align 8
  %54 = load i64, i64* @blacklist_num_sites, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  store i32* null, i32** %55, align 8
  %56 = load i32**, i32*** @server_blacklist, align 8
  %57 = load i64, i64* @blacklist_num_servers, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  store i32* null, i32** %58, align 8
  %59 = load i64, i64* @num_handles, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %50, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fscanf(i32*, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
