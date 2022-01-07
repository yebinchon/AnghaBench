; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argp_state = type { i64, i64, i32*, %struct.arguments* }
%struct.arguments = type { i32, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i32, i32, i8* }
%struct.TYPE_4__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid path %s\0A\00", align 1
@configDir = common dso_local global i32 0, align 4
@ARGP_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.argp_state*)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt(i32 %0, i8* %1, %struct.argp_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.argp_state*, align 8
  %8 = alloca %struct.arguments*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.argp_state* %2, %struct.argp_state** %7, align 8
  %10 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %11 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %10, i32 0, i32 3
  %12 = load %struct.arguments*, %struct.arguments** %11, align 8
  store %struct.arguments* %12, %struct.arguments** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %149 [
    i32 97, label %14
    i32 104, label %17
    i32 117, label %21
    i32 112, label %25
    i32 80, label %29
    i32 111, label %34
    i32 105, label %52
    i32 99, label %72
    i32 101, label %88
    i32 65, label %92
    i32 66, label %95
    i32 115, label %98
    i32 77, label %101
    i32 83, label %104
    i32 69, label %109
    i32 78, label %114
    i32 128, label %119
    i32 129, label %122
  ]

14:                                               ; preds = %3
  %15 = load %struct.arguments*, %struct.arguments** %8, align 8
  %16 = getelementptr inbounds %struct.arguments, %struct.arguments* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %151

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.arguments*, %struct.arguments** %8, align 8
  %20 = getelementptr inbounds %struct.arguments, %struct.arguments* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %151

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.arguments*, %struct.arguments** %8, align 8
  %24 = getelementptr inbounds %struct.arguments, %struct.arguments* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  br label %151

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.arguments*, %struct.arguments** %8, align 8
  %28 = getelementptr inbounds %struct.arguments, %struct.arguments* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  br label %151

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @atoi(i8* %30)
  %32 = load %struct.arguments*, %struct.arguments** %8, align 8
  %33 = getelementptr inbounds %struct.arguments, %struct.arguments* %32, i32 0, i32 18
  store i8* %31, i8** %33, align 8
  br label %151

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @wordexp(i8* %35, %struct.TYPE_4__* %9, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32 -1, i32* %4, align 4
  br label %152

42:                                               ; preds = %34
  %43 = load %struct.arguments*, %struct.arguments** %8, align 8
  %44 = getelementptr inbounds %struct.arguments, %struct.arguments* %43, i32 0, i32 17
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32 %45, i32 %49)
  %51 = call i32 @wordfree(%struct.TYPE_4__* %9)
  br label %151

52:                                               ; preds = %3
  %53 = load %struct.arguments*, %struct.arguments** %8, align 8
  %54 = getelementptr inbounds %struct.arguments, %struct.arguments* %53, i32 0, i32 4
  store i32 1, i32* %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @wordexp(i8* %55, %struct.TYPE_4__* %9, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %60)
  store i32 -1, i32* %4, align 4
  br label %152

62:                                               ; preds = %52
  %63 = load %struct.arguments*, %struct.arguments** %8, align 8
  %64 = getelementptr inbounds %struct.arguments, %struct.arguments* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strcpy(i32 %65, i32 %69)
  %71 = call i32 @wordfree(%struct.TYPE_4__* %9)
  br label %151

72:                                               ; preds = %3
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @wordexp(i8* %73, %struct.TYPE_4__* %9, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %78)
  store i32 -1, i32* %4, align 4
  br label %152

80:                                               ; preds = %72
  %81 = load i32, i32* @configDir, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strcpy(i32 %81, i32 %85)
  %87 = call i32 @wordfree(%struct.TYPE_4__* %9)
  br label %151

88:                                               ; preds = %3
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.arguments*, %struct.arguments** %8, align 8
  %91 = getelementptr inbounds %struct.arguments, %struct.arguments* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  br label %151

92:                                               ; preds = %3
  %93 = load %struct.arguments*, %struct.arguments** %8, align 8
  %94 = getelementptr inbounds %struct.arguments, %struct.arguments* %93, i32 0, i32 6
  store i32 1, i32* %94, align 8
  br label %151

95:                                               ; preds = %3
  %96 = load %struct.arguments*, %struct.arguments** %8, align 8
  %97 = getelementptr inbounds %struct.arguments, %struct.arguments* %96, i32 0, i32 7
  store i32 1, i32* %97, align 4
  br label %151

98:                                               ; preds = %3
  %99 = load %struct.arguments*, %struct.arguments** %8, align 8
  %100 = getelementptr inbounds %struct.arguments, %struct.arguments* %99, i32 0, i32 8
  store i32 1, i32* %100, align 8
  br label %151

101:                                              ; preds = %3
  %102 = load %struct.arguments*, %struct.arguments** %8, align 8
  %103 = getelementptr inbounds %struct.arguments, %struct.arguments* %102, i32 0, i32 9
  store i32 1, i32* %103, align 4
  br label %151

104:                                              ; preds = %3
  %105 = load i8*, i8** %6, align 8
  %106 = call i8* @atol(i8* %105)
  %107 = load %struct.arguments*, %struct.arguments** %8, align 8
  %108 = getelementptr inbounds %struct.arguments, %struct.arguments* %107, i32 0, i32 15
  store i8* %106, i8** %108, align 8
  br label %151

109:                                              ; preds = %3
  %110 = load i8*, i8** %6, align 8
  %111 = call i8* @atol(i8* %110)
  %112 = load %struct.arguments*, %struct.arguments** %8, align 8
  %113 = getelementptr inbounds %struct.arguments, %struct.arguments* %112, i32 0, i32 14
  store i8* %111, i8** %113, align 8
  br label %151

114:                                              ; preds = %3
  %115 = load i8*, i8** %6, align 8
  %116 = call i8* @atoi(i8* %115)
  %117 = load %struct.arguments*, %struct.arguments** %8, align 8
  %118 = getelementptr inbounds %struct.arguments, %struct.arguments* %117, i32 0, i32 13
  store i8* %116, i8** %118, align 8
  br label %151

119:                                              ; preds = %3
  %120 = load %struct.arguments*, %struct.arguments** %8, align 8
  %121 = getelementptr inbounds %struct.arguments, %struct.arguments* %120, i32 0, i32 10
  store i32 1, i32* %121, align 8
  br label %151

122:                                              ; preds = %3
  %123 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %124 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %127 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, 1
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load %struct.arguments*, %struct.arguments** %8, align 8
  %132 = getelementptr inbounds %struct.arguments, %struct.arguments* %131, i32 0, i32 12
  store i32* %130, i32** %132, align 8
  %133 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %134 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %137 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = add nsw i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = load %struct.arguments*, %struct.arguments** %8, align 8
  %143 = getelementptr inbounds %struct.arguments, %struct.arguments* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 4
  %144 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %145 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %148 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %151

149:                                              ; preds = %3
  %150 = load i32, i32* @ARGP_ERR_UNKNOWN, align 4
  store i32 %150, i32* %4, align 4
  br label %152

151:                                              ; preds = %122, %119, %114, %109, %104, %101, %98, %95, %92, %88, %80, %62, %42, %29, %25, %21, %17, %14
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %149, %76, %58, %38
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

declare dso_local i8* @atol(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
