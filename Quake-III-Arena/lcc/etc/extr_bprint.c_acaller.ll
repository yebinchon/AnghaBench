; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_acaller.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_acaller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func = type { %struct.caller* }
%struct.caller = type { i8*, i8*, i32, i32, i64, %struct.caller* }

@PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, %struct.func*)* @acaller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acaller(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.func* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.func*, align 8
  %13 = alloca %struct.caller*, align 8
  %14 = alloca %struct.caller**, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.func* %5, %struct.func** %12, align 8
  %15 = load %struct.func*, %struct.func** %12, align 8
  %16 = call i32 @assert(%struct.func* %15)
  %17 = load %struct.func*, %struct.func** %12, align 8
  %18 = getelementptr inbounds %struct.func, %struct.func* %17, i32 0, i32 0
  %19 = load %struct.caller*, %struct.caller** %18, align 8
  store %struct.caller* %19, %struct.caller** %13, align 8
  br label %20

20:                                               ; preds = %52, %6
  %21 = load %struct.caller*, %struct.caller** %13, align 8
  %22 = icmp ne %struct.caller* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.caller*, %struct.caller** %13, align 8
  %26 = getelementptr inbounds %struct.caller, %struct.caller* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %24, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.caller*, %struct.caller** %13, align 8
  %32 = getelementptr inbounds %struct.caller, %struct.caller* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %30, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.caller*, %struct.caller** %13, align 8
  %38 = getelementptr inbounds %struct.caller, %struct.caller* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.caller*, %struct.caller** %13, align 8
  %44 = getelementptr inbounds %struct.caller, %struct.caller* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br label %47

47:                                               ; preds = %41, %35, %29, %23
  %48 = phi i1 [ true, %35 ], [ true, %29 ], [ true, %23 ], [ %46, %41 ]
  br label %49

49:                                               ; preds = %47, %20
  %50 = phi i1 [ false, %20 ], [ %48, %47 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.caller*, %struct.caller** %13, align 8
  %54 = getelementptr inbounds %struct.caller, %struct.caller* %53, i32 0, i32 5
  %55 = load %struct.caller*, %struct.caller** %54, align 8
  store %struct.caller* %55, %struct.caller** %13, align 8
  br label %20

56:                                               ; preds = %49
  %57 = load %struct.caller*, %struct.caller** %13, align 8
  %58 = icmp ne %struct.caller* %57, null
  br i1 %58, label %137, label %59

59:                                               ; preds = %56
  %60 = load %struct.caller*, %struct.caller** %13, align 8
  %61 = load i32, i32* @PERM, align 4
  %62 = call i32 @NEW(%struct.caller* %60, i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.caller*, %struct.caller** %13, align 8
  %65 = getelementptr inbounds %struct.caller, %struct.caller* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.caller*, %struct.caller** %13, align 8
  %68 = getelementptr inbounds %struct.caller, %struct.caller* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.caller*, %struct.caller** %13, align 8
  %71 = getelementptr inbounds %struct.caller, %struct.caller* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.caller*, %struct.caller** %13, align 8
  %74 = getelementptr inbounds %struct.caller, %struct.caller* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.caller*, %struct.caller** %13, align 8
  %76 = getelementptr inbounds %struct.caller, %struct.caller* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.func*, %struct.func** %12, align 8
  %78 = getelementptr inbounds %struct.func, %struct.func* %77, i32 0, i32 0
  store %struct.caller** %78, %struct.caller*** %14, align 8
  br label %79

79:                                               ; preds = %126, %59
  %80 = load %struct.caller**, %struct.caller*** %14, align 8
  %81 = load %struct.caller*, %struct.caller** %80, align 8
  %82 = icmp ne %struct.caller* %81, null
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = load %struct.caller*, %struct.caller** %13, align 8
  %85 = getelementptr inbounds %struct.caller, %struct.caller* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.caller**, %struct.caller*** %14, align 8
  %88 = load %struct.caller*, %struct.caller** %87, align 8
  %89 = getelementptr inbounds %struct.caller, %struct.caller* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %86, i8* %90)
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %83
  %94 = load %struct.caller*, %struct.caller** %13, align 8
  %95 = getelementptr inbounds %struct.caller, %struct.caller* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.caller**, %struct.caller*** %14, align 8
  %98 = load %struct.caller*, %struct.caller** %97, align 8
  %99 = getelementptr inbounds %struct.caller, %struct.caller* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %96, i8* %100)
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %93
  %104 = load %struct.caller*, %struct.caller** %13, align 8
  %105 = getelementptr inbounds %struct.caller, %struct.caller* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.caller**, %struct.caller*** %14, align 8
  %108 = load %struct.caller*, %struct.caller** %107, align 8
  %109 = getelementptr inbounds %struct.caller, %struct.caller* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %106, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %103
  %113 = load %struct.caller*, %struct.caller** %13, align 8
  %114 = getelementptr inbounds %struct.caller, %struct.caller* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.caller**, %struct.caller*** %14, align 8
  %117 = load %struct.caller*, %struct.caller** %116, align 8
  %118 = getelementptr inbounds %struct.caller, %struct.caller* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %115, %119
  br label %121

121:                                              ; preds = %112, %103, %93, %83
  %122 = phi i1 [ true, %103 ], [ true, %93 ], [ true, %83 ], [ %120, %112 ]
  br label %123

123:                                              ; preds = %121, %79
  %124 = phi i1 [ false, %79 ], [ %122, %121 ]
  br i1 %124, label %125, label %130

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.caller**, %struct.caller*** %14, align 8
  %128 = load %struct.caller*, %struct.caller** %127, align 8
  %129 = getelementptr inbounds %struct.caller, %struct.caller* %128, i32 0, i32 5
  store %struct.caller** %129, %struct.caller*** %14, align 8
  br label %79

130:                                              ; preds = %123
  %131 = load %struct.caller**, %struct.caller*** %14, align 8
  %132 = load %struct.caller*, %struct.caller** %131, align 8
  %133 = load %struct.caller*, %struct.caller** %13, align 8
  %134 = getelementptr inbounds %struct.caller, %struct.caller* %133, i32 0, i32 5
  store %struct.caller* %132, %struct.caller** %134, align 8
  %135 = load %struct.caller*, %struct.caller** %13, align 8
  %136 = load %struct.caller**, %struct.caller*** %14, align 8
  store %struct.caller* %135, %struct.caller** %136, align 8
  br label %137

137:                                              ; preds = %130, %56
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.caller*, %struct.caller** %13, align 8
  %141 = getelementptr inbounds %struct.caller, %struct.caller* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  ret void
}

declare dso_local i32 @assert(%struct.func*) #1

declare dso_local i32 @NEW(%struct.caller*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
