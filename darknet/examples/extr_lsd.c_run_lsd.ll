; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_lsd.c_run_lsd.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_lsd.c_run_lsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-file\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"/home/pjreddie/data/imagenet/imagenet1k.train.list\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"traingan\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"trainprog\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"traincolor\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"gan\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"inter\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"color\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_lsd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  br label %164

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load i8**, i8*** %4, align 8
  %28 = call i32 @find_arg(i32 %26, i8** %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i8**, i8*** %4, align 8
  %31 = call i32 @find_arg(i32 %29, i8** %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = call i32 @find_int_arg(i32 %32, i8** %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = call i8* @find_char_arg(i32 %35, i8** %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 3
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %9, align 8
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 4
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i8* [ %46, %43 ], [ null, %47 ]
  store i8* %49, i8** %10, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 5
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 5
  %55 = load i8*, i8** %54, align 8
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i8* [ %55, %52 ], [ null, %56 ]
  store i8* %58, i8** %11, align 8
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 5
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i32, i32* %3, align 4
  %63 = icmp sgt i32 %62, 6
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 6
  %67 = load i8*, i8** %66, align 8
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i8* [ %67, %64 ], [ null, %68 ]
  store i8* %70, i8** %13, align 8
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp eq i64 0, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @train_dcgan(i8* %77, i8* %78, i8* %79, i8* %80, i32 %81, i32 %82, i8* %83, i32 %84)
  br label %164

86:                                               ; preds = %69
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp eq i64 0, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @train_prog(i8* %93, i8* %94, i8* %95, i8* %96, i32 %97, i32 %98, i8* %99, i32 %100)
  br label %163

102:                                              ; preds = %86
  %103 = load i8**, i8*** %4, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %107 = icmp eq i64 0, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @train_colorizer(i8* %109, i8* %110, i8* %111, i8* %112, i32 %113, i32 %114)
  br label %162

116:                                              ; preds = %102
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %121 = icmp eq i64 0, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @test_dcgan(i8* %123, i8* %124)
  br label %161

126:                                              ; preds = %116
  %127 = load i8**, i8*** %4, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %131 = icmp eq i64 0, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @inter_dcgan(i8* %133, i8* %134)
  br label %160

136:                                              ; preds = %126
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %141 = icmp eq i64 0, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i8*, i8** %9, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @test_lsd(i8* %143, i8* %144, i8* %145, i32 0)
  br label %159

147:                                              ; preds = %136
  %148 = load i8**, i8*** %4, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %152 = icmp eq i64 0, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @test_lsd(i8* %154, i8* %155, i8* %156, i32 1)
  br label %158

158:                                              ; preds = %153, %147
  br label %159

159:                                              ; preds = %158, %142
  br label %160

160:                                              ; preds = %159, %132
  br label %161

161:                                              ; preds = %160, %122
  br label %162

162:                                              ; preds = %161, %108
  br label %163

163:                                              ; preds = %162, %92
  br label %164

164:                                              ; preds = %16, %163, %76
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i32 @find_int_arg(i32, i8**, i8*, i32) #1

declare dso_local i8* @find_char_arg(i32, i8**, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @train_dcgan(i8*, i8*, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @train_prog(i8*, i8*, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @train_colorizer(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @test_dcgan(i8*, i8*) #1

declare dso_local i32 @inter_dcgan(i8*, i8*) #1

declare dso_local i32 @test_lsd(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
