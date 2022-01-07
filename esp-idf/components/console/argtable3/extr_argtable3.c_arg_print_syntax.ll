; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_syntax.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i8*, i8*, i8*, i32, i32 }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASVALUE = common dso_local global i32 0, align 4
@ARG_HASOPTVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" [%s] [%s]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" [%s]...\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_print_syntax(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arg_hdr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [200 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = bitcast i8** %14 to %struct.arg_hdr**
  store %struct.arg_hdr** %15, %struct.arg_hdr*** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %18 = call i32 @arg_print_gnuswitch(i32* %16, %struct.arg_hdr** %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %151, %3
  %20 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %20, i64 %22
  %24 = load %struct.arg_hdr*, %struct.arg_hdr** %23, align 8
  %25 = icmp ne %struct.arg_hdr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %27, i64 %29
  %31 = load %struct.arg_hdr*, %struct.arg_hdr** %30, align 8
  %32 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ARG_TERMINATOR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %26, %19
  %39 = phi i1 [ false, %19 ], [ %37, %26 ]
  br i1 %39, label %40, label %154

40:                                               ; preds = %38
  %41 = bitcast [200 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 200, i1 false)
  %42 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %42, i64 %44
  %46 = load %struct.arg_hdr*, %struct.arg_hdr** %45, align 8
  %47 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %51, i64 %53
  %55 = load %struct.arg_hdr*, %struct.arg_hdr** %54, align 8
  %56 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ARG_HASVALUE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %151

62:                                               ; preds = %50, %40
  %63 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %63, i64 %65
  %67 = load %struct.arg_hdr*, %struct.arg_hdr** %66, align 8
  %68 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %11, align 8
  %70 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %70, i64 %72
  %74 = load %struct.arg_hdr*, %struct.arg_hdr** %73, align 8
  %75 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %12, align 8
  %77 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %77, i64 %79
  %81 = load %struct.arg_hdr*, %struct.arg_hdr** %80, align 8
  %82 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %13, align 8
  %84 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %88, i64 %90
  %92 = load %struct.arg_hdr*, %struct.arg_hdr** %91, align 8
  %93 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ARG_HASOPTVALUE, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @arg_cat_option(i8* %84, i32 200, i8* %85, i8* %86, i8* %87, i32 %96)
  %98 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %99 = call i64 @strlen(i8* %98)
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %150

101:                                              ; preds = %62
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %116, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %104, i64 %106
  %108 = load %struct.arg_hdr*, %struct.arg_hdr** %107, align 8
  %109 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %103, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %115 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %120, i64 %122
  %124 = load %struct.arg_hdr*, %struct.arg_hdr** %123, align 8
  %125 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.arg_hdr**, %struct.arg_hdr*** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %127, i64 %129
  %131 = load %struct.arg_hdr*, %struct.arg_hdr** %130, align 8
  %132 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %126, %133
  switch i32 %134, label %145 [
    i32 0, label %135
    i32 1, label %136
    i32 2, label %140
  ]

135:                                              ; preds = %119
  br label %149

136:                                              ; preds = %119
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %139 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %138)
  br label %149

140:                                              ; preds = %119
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %143 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %144 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %142, i8* %143)
  br label %149

145:                                              ; preds = %119
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %148 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %145, %140, %136, %135
  br label %150

150:                                              ; preds = %149, %62
  br label %151

151:                                              ; preds = %150, %61
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %19

154:                                              ; preds = %38
  %155 = load i8*, i8** %6, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32*, i32** %4, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %157, %154
  ret void
}

declare dso_local i32 @arg_print_gnuswitch(i32*, %struct.arg_hdr**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @arg_cat_option(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
