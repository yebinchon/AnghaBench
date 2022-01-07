; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_anchor_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_anchor_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.pf_rule = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.pfioc_rule = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"pf_anchor_copyout: '%s' '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_anchor_copyout(%struct.pf_ruleset* %0, %struct.pf_rule* %1, %struct.pfioc_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_ruleset*, align 8
  %6 = alloca %struct.pf_rule*, align 8
  %7 = alloca %struct.pfioc_rule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pf_ruleset* %0, %struct.pf_ruleset** %5, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %6, align 8
  store %struct.pfioc_rule* %2, %struct.pfioc_rule** %7, align 8
  %11 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %12 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %16 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %161

20:                                               ; preds = %3
  %21 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %22 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %27 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 8)
  %30 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %31 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %34 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlcat(i8* %32, i8* %37, i32 8)
  br label %141

39:                                               ; preds = %20
  %40 = load i32, i32* @MAXPATHLEN, align 4
  %41 = call i64 @rs_malloc(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @MAXPATHLEN, align 4
  %45 = call i32 @bzero(i8* %43, i32 %44)
  %46 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %47 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp eq %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %52, align 1
  br label %62

53:                                               ; preds = %39
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %56 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @MAXPATHLEN, align 4
  %61 = call i32 @strlcpy(i8* %54, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %50
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %66 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @strrchr(i8* %70, i8 signext 47)
  store i8* %71, i8** %9, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i8*, i8** %9, align 8
  store i8 0, i8* %76, align 1
  %77 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %78 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlcat(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %87 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = call i64 @strncmp(i8* %85, i8* %90, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %84
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %98 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %96, i8* %101)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @rs_free(i8* %103)
  store i32 1, i32* %4, align 4
  br label %161

105:                                              ; preds = %84
  %106 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %107 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %105
  %116 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %117 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %120 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %115
  %130 = load i8*, i8** %8, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = add nsw i64 %131, 1
  br label %134

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133, %129
  %135 = phi i64 [ %132, %129 ], [ 0, %133 ]
  %136 = getelementptr inbounds i8, i8* %123, i64 %135
  %137 = call i32 @strlcat(i8* %118, i8* %136, i32 8)
  br label %138

138:                                              ; preds = %134, %105
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @rs_free(i8* %139)
  br label %141

141:                                              ; preds = %138, %25
  %142 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %143 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %148 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.pfioc_rule*, %struct.pfioc_rule** %7, align 8
  %151 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %159 = call i32 @strlcat(i8* %149, i8* %158, i32 8)
  br label %160

160:                                              ; preds = %146, %141
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %95, %19
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @rs_malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @rs_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
