; ModuleID = '/home/carl/AnghaBench/disque/src/extr_setproctitle.c_spt_init.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_setproctitle.c_spt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i8* }

@environ = common dso_local global i8** null, align 8
@SPT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@errno = common dso_local global i32 0, align 4
@program_invocation_name = common dso_local global i8* null, align 8
@program_invocation_short_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spt_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i8**, i8*** @environ, align 8
  store i8** %12, i8*** %5, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %140

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %76, %18
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i1 [ false, %30 ], [ %40, %34 ]
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi i1 [ true, %26 ], [ %42, %41 ]
  br i1 %44, label %45, label %79

45:                                               ; preds = %43
  %46 = load i8**, i8*** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %45
  br label %76

61:                                               ; preds = %52
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %66, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %61, %60
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %26

79:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %111, %79
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %114

87:                                               ; preds = %80
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ult i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %111

96:                                               ; preds = %87
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %101, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8* %110, i8** %7, align 8
  br label %111

111:                                              ; preds = %96, %95
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %80

114:                                              ; preds = %80
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @strdup(i8* %117)
  store i8* %118, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SPT, i32 0, i32 4), align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %136

121:                                              ; preds = %114
  %122 = load i8**, i8*** %5, align 8
  %123 = call i32 @spt_copyenv(i8** %122)
  store i32 %123, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %138

126:                                              ; preds = %121
  %127 = load i32, i32* %3, align 4
  %128 = load i8**, i8*** %4, align 8
  %129 = call i32 @spt_copyargs(i32 %127, i8** %128)
  store i32 %129, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %138

132:                                              ; preds = %126
  %133 = load i8*, i8** %8, align 8
  store i8* %133, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SPT, i32 0, i32 0), align 8
  %134 = load i8*, i8** %6, align 8
  store i8* %134, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SPT, i32 0, i32 1), align 8
  %135 = load i8*, i8** %7, align 8
  store i8* %135, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SPT, i32 0, i32 2), align 8
  br label %140

136:                                              ; preds = %120
  %137 = load i32, i32* @errno, align 4
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %131, %125
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SPT, i32 0, i32 3), align 8
  br label %140

140:                                              ; preds = %138, %132, %17
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @spt_copyenv(i8**) #1

declare dso_local i32 @spt_copyargs(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
