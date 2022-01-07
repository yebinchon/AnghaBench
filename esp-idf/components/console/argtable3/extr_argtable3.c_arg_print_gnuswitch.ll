; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_gnuswitch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_gnuswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c" -%c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" [-%c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASVALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"[%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.arg_hdr**)* @arg_print_gnuswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_print_gnuswitch(i32* %0, %struct.arg_hdr** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.arg_hdr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.arg_hdr** %1, %struct.arg_hdr*** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %75, %2
  %10 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %10, i64 %12
  %14 = load %struct.arg_hdr*, %struct.arg_hdr** %13, align 8
  %15 = icmp ne %struct.arg_hdr* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %17, i64 %19
  %21 = load %struct.arg_hdr*, %struct.arg_hdr** %20, align 8
  %22 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ARG_TERMINATOR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %16, %9
  %29 = phi i1 [ false, %9 ], [ %27, %16 ]
  br i1 %29, label %30, label %78

30:                                               ; preds = %28
  %31 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %31, i64 %33
  %35 = load %struct.arg_hdr*, %struct.arg_hdr** %34, align 8
  %36 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %75

40:                                               ; preds = %30
  %41 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %41, i64 %43
  %45 = load %struct.arg_hdr*, %struct.arg_hdr** %44, align 8
  %46 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = icmp eq i8** %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %75

50:                                               ; preds = %40
  %51 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %51, i64 %53
  %55 = load %struct.arg_hdr*, %struct.arg_hdr** %54, align 8
  %56 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ARG_HASVALUE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %75

62:                                               ; preds = %50
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %65, i64 %67
  %69 = load %struct.arg_hdr*, %struct.arg_hdr** %68, align 8
  %70 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fprintf(i32* %63, i8* %64, i8* %73)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %75

75:                                               ; preds = %62, %61, %49, %39
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %9

78:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %145, %78
  %80 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %80, i64 %82
  %84 = load %struct.arg_hdr*, %struct.arg_hdr** %83, align 8
  %85 = icmp ne %struct.arg_hdr* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %87, i64 %89
  %91 = load %struct.arg_hdr*, %struct.arg_hdr** %90, align 8
  %92 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ARG_TERMINATOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %86, %79
  %99 = phi i1 [ false, %79 ], [ %97, %86 ]
  br i1 %99, label %100, label %148

100:                                              ; preds = %98
  %101 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %101, i64 %103
  %105 = load %struct.arg_hdr*, %struct.arg_hdr** %104, align 8
  %106 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %145

110:                                              ; preds = %100
  %111 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %111, i64 %113
  %115 = load %struct.arg_hdr*, %struct.arg_hdr** %114, align 8
  %116 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %115, i32 0, i32 2
  %117 = load i8**, i8*** %116, align 8
  %118 = icmp eq i8** %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %145

120:                                              ; preds = %110
  %121 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %121, i64 %123
  %125 = load %struct.arg_hdr*, %struct.arg_hdr** %124, align 8
  %126 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ARG_HASVALUE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %145

132:                                              ; preds = %120
  %133 = load i32*, i32** %3, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %135, i64 %137
  %139 = load %struct.arg_hdr*, %struct.arg_hdr** %138, align 8
  %140 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @fprintf(i32* %133, i8* %134, i8* %143)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %145

145:                                              ; preds = %132, %131, %119, %109
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %79

148:                                              ; preds = %98
  %149 = load i32*, i32** %3, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @fprintf(i32* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %150)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
