; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_b_to_q.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_b_to_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i64, i64, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b_to_q(i32* %0, i32 %1, %struct.clist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.clist* %2, %struct.clist** %7, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

14:                                               ; preds = %3
  %15 = load %struct.clist*, %struct.clist** %7, align 8
  %16 = getelementptr inbounds %struct.clist, %struct.clist* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.clist*, %struct.clist** %7, align 8
  %21 = getelementptr inbounds %struct.clist, %struct.clist* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.clist*, %struct.clist** %7, align 8
  %26 = call i64 @clalloc(%struct.clist* %25, i32 1024, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %157

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.clist*, %struct.clist** %7, align 8
  %32 = getelementptr inbounds %struct.clist, %struct.clist* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.clist*, %struct.clist** %7, align 8
  %35 = getelementptr inbounds %struct.clist, %struct.clist* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.clist*, %struct.clist** %7, align 8
  %37 = getelementptr inbounds %struct.clist, %struct.clist* %36, i32 0, i32 2
  store i64 %33, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %14
  %39 = load %struct.clist*, %struct.clist** %7, align 8
  %40 = getelementptr inbounds %struct.clist, %struct.clist* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.clist*, %struct.clist** %7, align 8
  %43 = getelementptr inbounds %struct.clist, %struct.clist* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %157

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %155, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.clist*, %struct.clist** %7, align 8
  %53 = getelementptr inbounds %struct.clist, %struct.clist* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.clist*, %struct.clist** %7, align 8
  %56 = getelementptr inbounds %struct.clist, %struct.clist* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i1 [ false, %48 ], [ %58, %51 ]
  br i1 %60, label %61, label %156

61:                                               ; preds = %59
  %62 = load %struct.clist*, %struct.clist** %7, align 8
  %63 = getelementptr inbounds %struct.clist, %struct.clist* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.clist*, %struct.clist** %7, align 8
  %67 = getelementptr inbounds %struct.clist, %struct.clist* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load %struct.clist*, %struct.clist** %7, align 8
  %72 = getelementptr inbounds %struct.clist, %struct.clist* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.clist*, %struct.clist** %7, align 8
  %75 = getelementptr inbounds %struct.clist, %struct.clist* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %61
  %79 = load %struct.clist*, %struct.clist** %7, align 8
  %80 = getelementptr inbounds %struct.clist, %struct.clist* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.clist*, %struct.clist** %7, align 8
  %83 = getelementptr inbounds %struct.clist, %struct.clist* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %78, %61
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.clist*, %struct.clist** %7, align 8
  %96 = getelementptr inbounds %struct.clist, %struct.clist* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @bcopy(i32* %94, i32 %98, i32 %99)
  %101 = load %struct.clist*, %struct.clist** %7, align 8
  %102 = getelementptr inbounds %struct.clist, %struct.clist* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %93
  %106 = load %struct.clist*, %struct.clist** %7, align 8
  %107 = getelementptr inbounds %struct.clist, %struct.clist* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.clist*, %struct.clist** %7, align 8
  %110 = getelementptr inbounds %struct.clist, %struct.clist* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = load %struct.clist*, %struct.clist** %7, align 8
  %114 = getelementptr inbounds %struct.clist, %struct.clist* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %112, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @bzero(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %105, %93
  %122 = load i32, i32* %8, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %9, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.clist*, %struct.clist** %7, align 8
  %132 = getelementptr inbounds %struct.clist, %struct.clist* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.clist*, %struct.clist** %7, align 8
  %138 = getelementptr inbounds %struct.clist, %struct.clist* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.clist*, %struct.clist** %7, align 8
  %142 = getelementptr inbounds %struct.clist, %struct.clist* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.clist*, %struct.clist** %7, align 8
  %145 = getelementptr inbounds %struct.clist, %struct.clist* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = icmp eq i64 %143, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %121
  %150 = load %struct.clist*, %struct.clist** %7, align 8
  %151 = getelementptr inbounds %struct.clist, %struct.clist* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.clist*, %struct.clist** %7, align 8
  %154 = getelementptr inbounds %struct.clist, %struct.clist* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %149, %121
  br label %48

156:                                              ; preds = %59
  br label %157

157:                                              ; preds = %156, %46, %28
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %13
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @clalloc(%struct.clist*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
