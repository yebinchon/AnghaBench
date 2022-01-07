; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_task.c_machine_task_set_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_task.c_machine_task_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@x86_DEBUG_STATE32_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@ids_zone = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@x86_DEBUG_STATE64_COUNT = common dso_local global i32 0, align 4
@x86_DEBUG_STATE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_task_set_state(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %182 [
    i32 129, label %14
    i32 128, label %49
    i32 130, label %84
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @x86_DEBUG_STATE32_COUNT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @debug_state_is_valid32(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %20, %14
  %29 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %29, i32* %5, align 4
  br label %184

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @ids_zone, align 4
  %37 = call i8* @zalloc(i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @copy_debug_state32(i32* %42, i32* %45, i32 %46)
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %5, align 4
  br label %184

49:                                               ; preds = %4
  %50 = load i64, i64* %8, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %11, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @x86_DEBUG_STATE64_COUNT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @debug_state_is_valid64(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59, %55, %49
  %64 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %64, i32* %5, align 4
  br label %184

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @ids_zone, align 4
  %72 = call i8* @zalloc(i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @copy_debug_state64(i32* %77, i32* %80, i32 %81)
  %83 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %83, i32* %5, align 4
  br label %184

84:                                               ; preds = %4
  %85 = load i64, i64* %8, align 8
  %86 = inttoptr i64 %85 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %12, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @x86_DEBUG_STATE_COUNT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %91, i32* %5, align 4
  br label %184

92:                                               ; preds = %84
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %136

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @x86_DEBUG_STATE32_COUNT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %98
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %105
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = call i32 @debug_state_is_valid32(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* @ids_zone, align 4
  %122 = call i8* @zalloc(i32 %121)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %120, %115
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @FALSE, align 4
  %134 = call i32 @copy_debug_state32(i32* %129, i32* %132, i32 %133)
  %135 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %135, i32* %5, align 4
  br label %184

136:                                              ; preds = %109, %105, %98, %92
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %180

142:                                              ; preds = %136
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @x86_DEBUG_STATE64_COUNT, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %180

149:                                              ; preds = %142
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %149
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = call i32 @debug_state_is_valid64(i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %153
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* @ids_zone, align 4
  %166 = call i8* @zalloc(i32 %165)
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  br label %170

170:                                              ; preds = %164, %159
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @FALSE, align 4
  %178 = call i32 @copy_debug_state64(i32* %173, i32* %176, i32 %177)
  %179 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %179, i32* %5, align 4
  br label %184

180:                                              ; preds = %153, %149, %142, %136
  %181 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %181, i32* %5, align 4
  br label %184

182:                                              ; preds = %4
  %183 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %180, %170, %126, %90, %76, %63, %41, %28
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @task_has_64Bit_addr(%struct.TYPE_10__*) #1

declare dso_local i32 @debug_state_is_valid32(i32*) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @copy_debug_state32(i32*, i32*, i32) #1

declare dso_local i32 @debug_state_is_valid64(i32*) #1

declare dso_local i32 @copy_debug_state64(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
