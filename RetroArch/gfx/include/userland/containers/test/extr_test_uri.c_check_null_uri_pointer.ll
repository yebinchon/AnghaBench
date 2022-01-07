; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_check_null_uri_pointer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_check_null_uri_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TEST_CHAR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"NULL URI parameter testing failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_null_uri_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_null_uri_pointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = call i32 @vc_uri_release(i32* null)
  %4 = call i32 @vc_uri_clear(i32* null)
  %5 = call i64 @vc_uri_parse(i32* null, i8* null)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i64 @vc_uri_parse(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i64 @vc_uri_build(i32* null, i8* null, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i8, i8* @TEST_CHAR, align 1
  %24 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i64 0, i64 0
  %26 = call i64 @vc_uri_build(i32* null, i8* %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @TEST_CHAR, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = call i64 @vc_uri_scheme(i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i64 @vc_uri_userinfo(i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i64 @vc_uri_host(i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = call i64 @vc_uri_port(i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = call i64 @vc_uri_path(i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = call i64 @vc_uri_fragment(i32* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = call i64 @vc_uri_num_queries(i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = call i32 @vc_uri_query(i32* null, i32 0, i32* null, i32* null)
  %85 = call i64 @vc_uri_set_scheme(i32* null, i32* null)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = call i64 @vc_uri_set_userinfo(i32* null, i32* null)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = call i64 @vc_uri_set_host(i32* null, i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = call i64 @vc_uri_set_port(i32* null, i32* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = call i64 @vc_uri_set_path(i32* null, i32* null)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %1, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %1, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = call i64 @vc_uri_set_fragment(i32* null, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = call i64 @vc_uri_add_query(i32* null, i32* null, i32* null)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %1, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

declare dso_local i32 @vc_uri_release(i32*) #1

declare dso_local i32 @vc_uri_clear(i32*) #1

declare dso_local i64 @vc_uri_parse(i32*, i8*) #1

declare dso_local i64 @vc_uri_build(i32*, i8*, i32) #1

declare dso_local i64 @vc_uri_scheme(i32*) #1

declare dso_local i64 @vc_uri_userinfo(i32*) #1

declare dso_local i64 @vc_uri_host(i32*) #1

declare dso_local i64 @vc_uri_port(i32*) #1

declare dso_local i64 @vc_uri_path(i32*) #1

declare dso_local i64 @vc_uri_fragment(i32*) #1

declare dso_local i64 @vc_uri_num_queries(i32*) #1

declare dso_local i32 @vc_uri_query(i32*, i32, i32*, i32*) #1

declare dso_local i64 @vc_uri_set_scheme(i32*, i32*) #1

declare dso_local i64 @vc_uri_set_userinfo(i32*, i32*) #1

declare dso_local i64 @vc_uri_set_host(i32*, i32*) #1

declare dso_local i64 @vc_uri_set_port(i32*, i32*) #1

declare dso_local i64 @vc_uri_set_path(i32*, i32*) #1

declare dso_local i64 @vc_uri_set_fragment(i32*, i32*) #1

declare dso_local i64 @vc_uri_add_query(i32*, i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
