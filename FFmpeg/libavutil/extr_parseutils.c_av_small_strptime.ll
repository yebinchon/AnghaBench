; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_small_strptime.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_small_strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_small_strptime(i8* %0, i8* %1, %struct.tm* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  br label %10

10:                                               ; preds = %153, %53, %3
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %6, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %154

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 37
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = trunc i32 %20 to i8
  %22 = call i64 @av_isspace(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @av_isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %25

41:                                               ; preds = %35
  br label %53

42:                                               ; preds = %19
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i8* null, i8** %4, align 8
  br label %156

49:                                               ; preds = %42
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %41
  br label %10

54:                                               ; preds = %16
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %152 [
    i32 72, label %60
    i32 74, label %60
    i32 77, label %80
    i32 83, label %89
    i32 89, label %98
    i32 109, label %108
    i32 100, label %118
    i32 84, label %127
    i32 98, label %135
    i32 66, label %135
    i32 104, label %135
    i32 37, label %144
  ]

60:                                               ; preds = %54, %54
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 72
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @INT_MAX, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 23, %63 ], [ %65, %64 ]
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 72
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 2, i32 4
  %72 = call i32 @date_get_num(i8** %5, i32 0, i32 %67, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i8* null, i8** %4, align 8
  br label %156

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.tm*, %struct.tm** %7, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %153

80:                                               ; preds = %54
  %81 = call i32 @date_get_num(i8** %5, i32 0, i32 59, i32 2)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8* null, i8** %4, align 8
  br label %156

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.tm*, %struct.tm** %7, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %153

89:                                               ; preds = %54
  %90 = call i32 @date_get_num(i8** %5, i32 0, i32 59, i32 2)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i8* null, i8** %4, align 8
  br label %156

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.tm*, %struct.tm** %7, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %153

98:                                               ; preds = %54
  %99 = call i32 @date_get_num(i8** %5, i32 0, i32 9999, i32 4)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8* null, i8** %4, align 8
  br label %156

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, 1900
  %106 = load %struct.tm*, %struct.tm** %7, align 8
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %153

108:                                              ; preds = %54
  %109 = call i32 @date_get_num(i8** %5, i32 1, i32 12, i32 2)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i8* null, i8** %4, align 8
  br label %156

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load %struct.tm*, %struct.tm** %7, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  br label %153

118:                                              ; preds = %54
  %119 = call i32 @date_get_num(i8** %5, i32 1, i32 31, i32 2)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i8* null, i8** %4, align 8
  br label %156

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.tm*, %struct.tm** %7, align 8
  %126 = getelementptr inbounds %struct.tm, %struct.tm* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  br label %153

127:                                              ; preds = %54
  %128 = load i8*, i8** %5, align 8
  %129 = load %struct.tm*, %struct.tm** %7, align 8
  %130 = call i8* @av_small_strptime(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* %129)
  store i8* %130, i8** %5, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  store i8* null, i8** %4, align 8
  br label %156

134:                                              ; preds = %127
  br label %153

135:                                              ; preds = %54, %54, %54
  %136 = call i32 @date_get_month(i8** %5)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i8* null, i8** %4, align 8
  br label %156

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.tm*, %struct.tm** %7, align 8
  %143 = getelementptr inbounds %struct.tm, %struct.tm* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  br label %153

144:                                              ; preds = %54
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  %147 = load i8, i8* %145, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 37
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i8* null, i8** %4, align 8
  br label %156

151:                                              ; preds = %144
  br label %153

152:                                              ; preds = %54
  store i8* null, i8** %4, align 8
  br label %156

153:                                              ; preds = %151, %140, %134, %123, %113, %103, %94, %85, %76
  br label %10

154:                                              ; preds = %10
  %155 = load i8*, i8** %5, align 8
  store i8* %155, i8** %4, align 8
  br label %156

156:                                              ; preds = %154, %152, %150, %139, %133, %122, %112, %102, %93, %84, %75, %48
  %157 = load i8*, i8** %4, align 8
  ret i8* %157
}

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i32 @date_get_num(i8**, i32, i32, i32) #1

declare dso_local i32 @date_get_month(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
