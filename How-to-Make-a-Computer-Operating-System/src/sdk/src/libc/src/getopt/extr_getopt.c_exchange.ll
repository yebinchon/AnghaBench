; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/getopt/extr_getopt.c_exchange.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/getopt/extr_getopt.c_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._getopt_data = type { i32, i32, i32, i64, i32 }

@__getopt_nonoption_flags = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct._getopt_data*)* @exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exchange(i8** %0, %struct._getopt_data* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct._getopt_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct._getopt_data* %1, %struct._getopt_data** %4, align 8
  %13 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %14 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %17 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %20 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %152, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %153

32:                                               ; preds = %30
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %95, %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %44
  %49 = load i8**, i8*** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8**, i8*** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %57, %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %56, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %67, i64 %71
  store i8* %66, i8** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %75, %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %74, i64 %82
  store i8* %73, i8** %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %87, %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @SWAP_FLAGS(i32 %86, i32 %93)
  br label %95

95:                                               ; preds = %48
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %44

98:                                               ; preds = %44
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %152

102:                                              ; preds = %32
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %145, %102
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %106
  %111 = load i8**, i8*** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %8, align 8
  %118 = load i8**, i8*** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %118, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %125, i64 %129
  store i8* %124, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8**, i8*** %3, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %132, i64 %136
  store i8* %131, i8** %137, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @SWAP_FLAGS(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %110
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %106

148:                                              ; preds = %106
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %98
  br label %22

153:                                              ; preds = %30
  %154 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %155 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %158 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %156, %159
  %161 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %162 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %166 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct._getopt_data*, %struct._getopt_data** %4, align 8
  %169 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  ret void
}

declare dso_local i32 @SWAP_FLAGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
