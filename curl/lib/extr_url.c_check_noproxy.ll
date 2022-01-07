; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_check_noproxy.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_check_noproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_noproxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_noproxy(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %156

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %156

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcasecompare(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %158

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 91
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 93)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %158

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  store i64 %49, i64* %10, align 8
  br label %53

50:                                               ; preds = %27
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strlen(i8* %51)
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %50, %42
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %152, %53
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %155

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i8* @strchr(i8* %64, i8 signext %68)
  %70 = icmp ne i8* %69, null
  br label %71

71:                                               ; preds = %63, %59
  %72 = phi i1 [ false, %59 ], [ %70, %63 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %59

76:                                               ; preds = %71
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %155

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %98, %81
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i8* @strchr(i8* %88, i8 signext %92)
  %94 = icmp eq i8* %93, null
  br label %95

95:                                               ; preds = %87, %83
  %96 = phi i1 [ false, %83 ], [ %94, %87 ]
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %83

101:                                              ; preds = %95
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %108, %101
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub i64 %112, %113
  %115 = load i64, i64* %10, align 8
  %116 = icmp ule i64 %114, %115
  br i1 %116, label %117, label %151

117:                                              ; preds = %111
  %118 = load i8*, i8** %4, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %6, align 8
  %123 = sub i64 %121, %122
  %124 = sub i64 0, %123
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  store i8* %125, i8** %12, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8*, i8** %12, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %6, align 8
  %132 = sub i64 %130, %131
  %133 = call i64 @strncasecompare(i8* %128, i8* %129, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %117
  %136 = load i64, i64* %7, align 8
  %137 = load i64, i64* %6, align 8
  %138 = sub i64 %136, %137
  %139 = load i64, i64* %10, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 -1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 46
  br i1 %146, label %147, label %149

147:                                              ; preds = %141, %135
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %3, align 4
  br label %158

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %117
  br label %151

151:                                              ; preds = %150, %111
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %7, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %6, align 8
  br label %54

155:                                              ; preds = %80, %54
  br label %156

156:                                              ; preds = %155, %15, %2
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %147, %40, %25
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @strcasecompare(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncasecompare(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
