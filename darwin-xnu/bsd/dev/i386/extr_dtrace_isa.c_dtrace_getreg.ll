; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getreg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regs = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@SS = common dso_local global i64 0, align 8
@regmap = common dso_local global i64* null, align 8
@x86_SAVED_STATE32_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getreg(%struct.regs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.regs* %0, %struct.regs** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @current_proc()
  %9 = call i64 @proc_is64bit(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.regs*, %struct.regs** %4, align 8
  %11 = bitcast %struct.regs* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %16 = call i32 @DTRACE_CPUFLAG_SET(i32 %15)
  store i32 0, i32* %3, align 4
  br label %183

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %167

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SS, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64*, i64** @regmap, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %34

29:                                               ; preds = %20
  %30 = load i64, i64* @SS, align 8
  %31 = add i64 %30, 1
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i64, i64* %5, align 8
  switch i64 %35, label %164 [
    i64 135, label %36
    i64 131, label %41
    i64 134, label %46
    i64 136, label %51
    i64 141, label %56
    i64 140, label %61
    i64 139, label %66
    i64 137, label %71
    i64 138, label %76
    i64 147, label %81
    i64 146, label %86
    i64 145, label %91
    i64 144, label %96
    i64 143, label %101
    i64 142, label %106
    i64 149, label %111
    i64 148, label %116
    i64 128, label %121
    i64 151, label %127
    i64 132, label %133
    i64 153, label %139
    i64 129, label %145
    i64 133, label %151
    i64 130, label %157
    i64 152, label %163
    i64 150, label %163
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 17
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %183

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %183

46:                                               ; preds = %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %183

51:                                               ; preds = %34
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  br label %183

56:                                               ; preds = %34
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %183

61:                                               ; preds = %34
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %3, align 4
  br label %183

66:                                               ; preds = %34
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %183

71:                                               ; preds = %34
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %183

76:                                               ; preds = %34
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %183

81:                                               ; preds = %34
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %3, align 4
  br label %183

86:                                               ; preds = %34
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %3, align 4
  br label %183

91:                                               ; preds = %34
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %3, align 4
  br label %183

96:                                               ; preds = %34
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %3, align 4
  br label %183

101:                                              ; preds = %34
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %3, align 4
  br label %183

106:                                              ; preds = %34
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %3, align 4
  br label %183

111:                                              ; preds = %34
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %3, align 4
  br label %183

116:                                              ; preds = %34
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %3, align 4
  br label %183

121:                                              ; preds = %34
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %3, align 4
  br label %183

127:                                              ; preds = %34
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %3, align 4
  br label %183

133:                                              ; preds = %34
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %3, align 4
  br label %183

139:                                              ; preds = %34
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %3, align 4
  br label %183

145:                                              ; preds = %34
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %3, align 4
  br label %183

151:                                              ; preds = %34
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %3, align 4
  br label %183

157:                                              ; preds = %34
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %3, align 4
  br label %183

163:                                              ; preds = %34, %34
  br label %164

164:                                              ; preds = %34, %163
  %165 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %166 = call i32 @DTRACE_CPUFLAG_SET(i32 %165)
  store i32 0, i32* %3, align 4
  br label %183

167:                                              ; preds = %17
  %168 = load i64, i64* %5, align 8
  %169 = load i32, i32* @x86_SAVED_STATE32_COUNT, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = icmp ugt i64 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %175 = call i32 @DTRACE_CPUFLAG_SET(i32 %174)
  store i32 0, i32* %3, align 4
  br label %183

176:                                              ; preds = %167
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %5, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %176, %173, %164, %157, %151, %145, %139, %133, %127, %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %14
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
