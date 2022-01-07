; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_update_charset.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_update_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_charset(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @S(%struct.TYPE_10__* %30)
  %32 = call i32 @g_string_assign_len(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @S(%struct.TYPE_10__* %39)
  %41 = call i32 @g_string_assign_len(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %33, %1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @S(%struct.TYPE_10__* %58)
  %60 = call i32 @g_string_assign_len(i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %52, %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = call i32 @S(%struct.TYPE_10__* %67)
  %69 = call i32 @g_string_assign_len(i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %61, %42
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = call i32 @S(%struct.TYPE_10__* %86)
  %88 = call i32 @g_string_assign_len(i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = call i32 @S(%struct.TYPE_10__* %95)
  %97 = call i32 @g_string_assign_len(i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %89, %70
  ret void
}

declare dso_local i32 @g_string_assign_len(i32, i32) #1

declare dso_local i32 @S(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
