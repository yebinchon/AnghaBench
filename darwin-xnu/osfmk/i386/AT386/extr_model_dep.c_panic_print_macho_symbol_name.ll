; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_panic_print_macho_symbol_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_panic_print_macho_symbol_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.load_command = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.symtab_command = type { i64, i64, i32 }

@LC_SEGMENT_KERNEL = common dso_local global i64 0, align 8
@SEG_TEXT = common dso_local global i8* null, align 8
@SEG_LINKEDIT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_SYMTAB = common dso_local global i64 0, align 8
@N_STAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s : %s + 0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i8*)* @panic_print_macho_symbol_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panic_print_macho_symbol_name(%struct.TYPE_9__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.load_command*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.symtab_command*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  store %struct.symtab_command* null, %struct.symtab_command** %12, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 1
  %22 = bitcast %struct.TYPE_9__* %21 to %struct.load_command*
  store %struct.load_command* %22, %struct.load_command** %9, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %84, %3
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load %struct.load_command*, %struct.load_command** %9, align 8
  %31 = getelementptr inbounds %struct.load_command, %struct.load_command* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LC_SEGMENT_KERNEL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load %struct.load_command*, %struct.load_command** %9, align 8
  %37 = bitcast %struct.load_command* %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %19, align 8
  %38 = load i8*, i8** @SEG_TEXT, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strncmp(i8* %38, i32 %41, i32 4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %10, align 8
  br label %65

46:                                               ; preds = %35
  %47 = load i8*, i8** @SEG_LINKEDIT, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strncmp(i8* %47, i32 %50, i32 4)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %11, align 8
  br label %64

55:                                               ; preds = %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @strncmp(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %58, i32 4)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %10, align 8
  br label %63

63:                                               ; preds = %61, %55
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %44
  br label %76

66:                                               ; preds = %29
  %67 = load %struct.load_command*, %struct.load_command** %9, align 8
  %68 = getelementptr inbounds %struct.load_command, %struct.load_command* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LC_SYMTAB, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.load_command*, %struct.load_command** %9, align 8
  %74 = bitcast %struct.load_command* %73 to %struct.symtab_command*
  store %struct.symtab_command* %74, %struct.symtab_command** %12, align 8
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %65
  %77 = load %struct.load_command*, %struct.load_command** %9, align 8
  %78 = ptrtoint %struct.load_command* %77 to i64
  %79 = load %struct.load_command*, %struct.load_command** %9, align 8
  %80 = getelementptr inbounds %struct.load_command, %struct.load_command* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = inttoptr i64 %82 to %struct.load_command*
  store %struct.load_command* %83, %struct.load_command** %9, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %23

87:                                               ; preds = %23
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = icmp eq %struct.TYPE_7__* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load %struct.symtab_command*, %struct.symtab_command** %12, align 8
  %92 = icmp eq %struct.symtab_command* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = icmp eq %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90, %87
  store i32 0, i32* %4, align 4
  br label %218

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = icmp sge i64 %104, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103, %97
  store i32 0, i32* %4, align 4
  br label %218

114:                                              ; preds = %103
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.symtab_command*, %struct.symtab_command** %12, align 8
  %119 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = inttoptr i64 %125 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %8, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.symtab_command*, %struct.symtab_command** %12, align 8
  %131 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %14, align 8
  %139 = load i64, i64* %6, align 8
  store i64 %139, i64* %17, align 8
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %198, %114
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.symtab_command*, %struct.symtab_command** %12, align 8
  %143 = getelementptr inbounds %struct.symtab_command, %struct.symtab_command* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %201

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = load i32, i32* %13, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @N_STAB, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %198

157:                                              ; preds = %146
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = icmp sle i64 %163, %164
  br i1 %165, label %166, label %197

166:                                              ; preds = %157
  %167 = load i64, i64* %6, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %169 = load i32, i32* %13, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %167, %173
  store i64 %174, i64* %18, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* %17, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %166
  %179 = load i64, i64* %18, align 8
  store i64 %179, i64* %17, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %16, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %188 = load i32, i32* %13, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %186, i64 %194
  store i8* %195, i8** %15, align 8
  br label %196

196:                                              ; preds = %178, %166
  br label %197

197:                                              ; preds = %196, %157
  br label %198

198:                                              ; preds = %197, %156
  %199 = load i32, i32* %13, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %140

201:                                              ; preds = %140
  %202 = load i8*, i8** %15, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %217

204:                                              ; preds = %201
  %205 = load i64, i64* %17, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i8*, i8** %7, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = load i64, i64* %17, align 8
  %211 = call i32 (i8*, i8*, i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %208, i8* %209, i64 %210)
  br label %216

212:                                              ; preds = %204
  %213 = load i8*, i8** %7, align 8
  %214 = load i8*, i8** %15, align 8
  %215 = call i32 (i8*, i8*, i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %213, i8* %214)
  br label %216

216:                                              ; preds = %212, %207
  store i32 1, i32* %4, align 4
  br label %218

217:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %216, %113, %96
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @paniclog_append_noflush(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
