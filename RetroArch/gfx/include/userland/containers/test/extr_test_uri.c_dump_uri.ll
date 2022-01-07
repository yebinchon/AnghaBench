; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_dump_uri.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_dump_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Scheme: <%s>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Userinfo: <%s>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Host: <%s>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Port: <%s>\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Path: <%s>\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Query %d: <%s>=<%s>\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Query %d: <%s>\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Fragment: <%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dump_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_uri(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @vc_uri_scheme(i32* %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @vc_uri_userinfo(i32* %15)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32*, i32** %2, align 8
  %24 = call i8* @vc_uri_host(i32* %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32*, i32** %2, align 8
  %32 = call i8* @vc_uri_port(i32* %31)
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32*, i32** %2, align 8
  %40 = call i8* @vc_uri_path(i32* %39)
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @vc_uri_num_queries(i32* %47)
  store i32 %48, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %77, %46
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @vc_uri_query(i32* %54, i32 %55, i8** %3, i8** %6)
  %57 = load i8*, i8** %3, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8*, i8** %3, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* %66, i8* %67)
  br label %75

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %69, %62
  br label %76

76:                                               ; preds = %75, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %49

80:                                               ; preds = %49
  %81 = load i32*, i32** %2, align 8
  %82 = call i8* @vc_uri_fragment(i32* %81)
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 (i32*, i8*, i8*, ...) @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %80
  ret void
}

declare dso_local i8* @vc_uri_scheme(i32*) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*, i8*, ...) #1

declare dso_local i8* @vc_uri_userinfo(i32*) #1

declare dso_local i8* @vc_uri_host(i32*) #1

declare dso_local i8* @vc_uri_port(i32*) #1

declare dso_local i8* @vc_uri_path(i32*) #1

declare dso_local i32 @vc_uri_num_queries(i32*) #1

declare dso_local i32 @vc_uri_query(i32*, i32, i8**, i8**) #1

declare dso_local i8* @vc_uri_fragment(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
