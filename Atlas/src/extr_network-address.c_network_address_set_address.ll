; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-address.c_network_address_set_address.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-address.c_network_address_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [78 x i8] c"%s: IP-address has to be in the form [<ip>][:<port>], is '%s'. No port number\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"%s: IP-address has to be in the form [<ip>][:<port>], is '%s'. Failed to parse the port at '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_address_set_address(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @g_return_val_if_fail(i32* %11, i32 -1)
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @network_address_set_address_un(i32* %19, i8* %20)
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* null, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i8* @g_strndup(i8* %27, i32 %33)
  store i8* %34, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 @strtoul(i8* %36, i8** %9, i32 10)
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load i32, i32* @G_STRLOC, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i8*, i32, i8*, ...) @g_critical(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %45)
  store i32 -1, i32* %7, align 4
  br label %63

47:                                               ; preds = %26
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @G_STRLOC, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, i32, i8*, ...) @g_critical(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %54, i8* %55)
  store i32 -1, i32* %7, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @network_address_set_address_ip(i32* %58, i8* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @g_free(i8* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %22
  %72 = load i32*, i32** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @network_address_set_address_ip(i32* %72, i8* %73, i32 3306)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %69, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @g_return_val_if_fail(i32*, i32) #1

declare dso_local i32 @network_address_set_address_un(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @g_strndup(i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @g_critical(i8*, i32, i8*, ...) #1

declare dso_local i32 @network_address_set_address_ip(i32*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
