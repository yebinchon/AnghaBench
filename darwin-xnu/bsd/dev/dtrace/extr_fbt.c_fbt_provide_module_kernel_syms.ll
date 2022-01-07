; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_provide_module_kernel_syms.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_provide_module_kernel_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i64 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.load_command = type { i64, i64 }
%struct.symtab_command = type { i32, i64, i64 }

@MH_MAGIC_KERNEL = common dso_local global i64 0, align 8
@LC_SEGMENT_KERNEL = common dso_local global i64 0, align 8
@SEG_LINKEDIT = common dso_local global i32 0, align 4
@LC_SYMTAB = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@fbt_sym_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"__KLD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.modctl*)* @fbt_provide_module_kernel_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbt_provide_module_kernel_syms(%struct.modctl* %0) #0 {
  %2 = alloca %struct.modctl*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.load_command*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.symtab_command*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  store %struct.modctl* %0, %struct.modctl** %2, align 8
  %15 = load %struct.modctl*, %struct.modctl** %2, align 8
  %16 = getelementptr inbounds %struct.modctl, %struct.modctl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store %struct.symtab_command* null, %struct.symtab_command** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MH_MAGIC_KERNEL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %173

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 1
  %28 = bitcast %struct.TYPE_11__* %27 to %struct.load_command*
  store %struct.load_command* %28, %struct.load_command** %5, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %78, %25
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %29
  %36 = load %struct.load_command*, %struct.load_command** %5, align 8
  %37 = getelementptr inbounds %struct.load_command, %struct.load_command* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LC_SEGMENT_KERNEL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.load_command*, %struct.load_command** %5, align 8
  %43 = bitcast %struct.load_command* %42 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %13, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEG_LINKEDIT, align 4
  %48 = call i64 @LIT_STRNEQL(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %6, align 8
  br label %52

52:                                               ; preds = %50, %41
  br label %63

53:                                               ; preds = %35
  %54 = load %struct.load_command*, %struct.load_command** %5, align 8
  %55 = getelementptr inbounds %struct.load_command, %struct.load_command* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LC_SYMTAB, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.load_command*, %struct.load_command** %5, align 8
  %61 = bitcast %struct.load_command* %60 to %struct.symtab_command*
  store %struct.symtab_command* %61, %struct.symtab_command** %7, align 8
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %52
  %64 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %65 = icmp ne %struct.symtab_command* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %81

70:                                               ; preds = %66, %63
  %71 = load %struct.load_command*, %struct.load_command** %5, align 8
  %72 = ptrtoint %struct.load_command* %71 to i64
  %73 = load %struct.load_command*, %struct.load_command** %5, align 8
  %74 = getelementptr inbounds %struct.load_command, %struct.load_command* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = inttoptr i64 %76 to %struct.load_command*
  store %struct.load_command* %77, %struct.load_command** %5, align 8
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %29

81:                                               ; preds = %69, %29
  %82 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %83 = icmp eq %struct.symtab_command* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = icmp eq %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81
  br label %173

88:                                               ; preds = %84
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %93 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %8, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %105 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %10, align 8
  %113 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %114 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* @KM_SLEEP, align 4
  %120 = call i32* @kmem_alloc(i64 %118, i32 %119)
  store i32* %120, i32** %9, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @bcopy(i32* %121, i32* %122, i64 %123)
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %127 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @fbt_sym_cmp, align 4
  %130 = call i32 @qsort(i32* %125, i32 %128, i32 4, i32 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = call %struct.TYPE_10__* @firstsegfromheader(%struct.TYPE_11__* %131)
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %4, align 8
  br label %133

133:                                              ; preds = %165, %88
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = icmp ne %struct.TYPE_10__* %134, null
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = call i32* @firstsect(%struct.TYPE_10__* %137)
  store i32* %138, i32** %14, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @strcmp(i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %165

145:                                              ; preds = %136
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = call i32* @firstsect(%struct.TYPE_10__* %146)
  store i32* %147, i32** %14, align 8
  br label %148

148:                                              ; preds = %160, %145
  %149 = load i32*, i32** %14, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load %struct.modctl*, %struct.modctl** %2, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load %struct.symtab_command*, %struct.symtab_command** %7, align 8
  %156 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @fbt_provide_kernel_section(%struct.modctl* %152, i32* %153, i32* %154, i32 %157, i8* %158)
  br label %160

160:                                              ; preds = %151
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = call i32* @nextsect(%struct.TYPE_10__* %161, i32* %162)
  store i32* %163, i32** %14, align 8
  br label %148

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164, %144
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = call %struct.TYPE_10__* @nextsegfromheader(%struct.TYPE_11__* %166, %struct.TYPE_10__* %167)
  store %struct.TYPE_10__* %168, %struct.TYPE_10__** %4, align 8
  br label %133

169:                                              ; preds = %133
  %170 = load i32*, i32** %9, align 8
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @kmem_free(i32* %170, i64 %171)
  br label %173

173:                                              ; preds = %169, %87, %24
  ret void
}

declare dso_local i64 @LIT_STRNEQL(i32, i32) #1

declare dso_local i32* @kmem_alloc(i64, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @firstsegfromheader(%struct.TYPE_11__*) #1

declare dso_local i32* @firstsect(%struct.TYPE_10__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fbt_provide_kernel_section(%struct.modctl*, i32*, i32*, i32, i8*) #1

declare dso_local i32* @nextsect(%struct.TYPE_10__*, i32*) #1

declare dso_local %struct.TYPE_10__* @nextsegfromheader(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @kmem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
