; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_anchor_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_anchor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.pf_ruleset = type { %struct.TYPE_2__* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pf_anchor_setup: .. beyond root\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"pf_anchor_setup: ruleset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_anchor_setup(%struct.pf_rule* %0, %struct.pf_ruleset* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_rule*, align 8
  %6 = alloca %struct.pf_ruleset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pf_ruleset*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %5, align 8
  store %struct.pf_ruleset* %1, %struct.pf_ruleset** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %12 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %11, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %12, align 8
  %13 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %14 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %16 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %166

22:                                               ; preds = %3
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = call i64 @rs_malloc(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = call i32 @bzero(i8* %26, i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i32, i32* @MAXPATHLEN, align 4
  %39 = call i32 @strlcpy(i8* %35, i8* %37, i32 %38)
  br label %128

40:                                               ; preds = %22
  %41 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %42 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %44 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp eq %struct.TYPE_2__* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %49 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47, %40
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  br label %68

59:                                               ; preds = %47
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.pf_ruleset*, %struct.pf_ruleset** %6, align 8
  %62 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @MAXPATHLEN, align 4
  %67 = call i32 @strlcpy(i8* %60, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %56
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br label %87

87:                                               ; preds = %81, %75, %69
  %88 = phi i1 [ false, %75 ], [ false, %69 ], [ %86, %81 ]
  br i1 %88, label %89, label %114

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @rs_free(i8* %96)
  store i32 1, i32* %4, align 4
  br label %166

98:                                               ; preds = %89
  %99 = load i8*, i8** %9, align 8
  %100 = call i8* @strrchr(i8* %99, i8 signext 47)
  store i8* %100, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  store i8 0, i8* %103, align 1
  br label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %104, %102
  %108 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %109 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  store i8* %113, i8** %7, align 8
  br label %69

114:                                              ; preds = %87
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* @MAXPATHLEN, align 4
  %122 = call i32 @strlcat(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* @MAXPATHLEN, align 4
  %127 = call i32 @strlcat(i8* %124, i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %34
  %129 = load i8*, i8** %9, align 8
  %130 = call i8* @strrchr(i8* %129, i8 signext 47)
  store i8* %130, i8** %8, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %138 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load i8*, i8** %8, align 8
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %136, %132, %128
  %141 = load i8*, i8** %9, align 8
  %142 = call %struct.pf_ruleset* @pf_find_or_create_ruleset(i8* %141)
  store %struct.pf_ruleset* %142, %struct.pf_ruleset** %10, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @rs_free(i8* %143)
  %145 = load %struct.pf_ruleset*, %struct.pf_ruleset** %10, align 8
  %146 = icmp eq %struct.pf_ruleset* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load %struct.pf_ruleset*, %struct.pf_ruleset** %10, align 8
  %149 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = icmp eq %struct.TYPE_2__* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %147, %140
  %153 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %166

154:                                              ; preds = %147
  %155 = load %struct.pf_ruleset*, %struct.pf_ruleset** %10, align 8
  %156 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %159 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %158, i32 0, i32 2
  store %struct.TYPE_2__* %157, %struct.TYPE_2__** %159, align 8
  %160 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %161 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %154, %152, %94, %21
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @rs_malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rs_free(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.pf_ruleset* @pf_find_or_create_ruleset(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
