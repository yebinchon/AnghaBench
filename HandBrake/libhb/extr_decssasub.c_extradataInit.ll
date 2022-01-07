; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decssasub.c_extradataInit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decssasub.c_extradataInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"[Events]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Format:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @extradataInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extradataInit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %18

18:                                               ; preds = %1, %79
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @hb_getline(i8** %10, i64* %12, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @free(i8* %26)
  store i32 1, i32* %2, align 4
  br label %96

28:                                               ; preds = %18
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @free(i8* %42)
  br label %47

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @strncasecmp(i8* %55, i8* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %54, %50
  br label %78

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @strncasecmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @free(i8* %73)
  br label %82

75:                                               ; preds = %66, %62
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  store i32 1, i32* %2, align 4
  br label %96

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %31, %28
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @free(i8* %80)
  br label %18

82:                                               ; preds = %72
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32* %84, i32** %88, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %82, %75, %25
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hb_getline(i8**, i64*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
